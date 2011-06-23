;; Copyright (c) 2011, Philippe Ivaldi <www.piprime.fr>
;; Version: $Id: htmlize-hook.el,v 0.0 2011/06/16 02:33:25 Exp $
;; $Last Modified on 2011/06/16 02:33:25

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; Commentary:

;; The compilation of geometry documentation need Emacs with asy-mode and
;; Htmlize <http://www.emacswiki.org/emacs/Htmlize> in order to generate colorized code of
;; Asymptote samples.
;; You must load this Emacs file configuration in order to re-build
;; the documentation with clean colorized code.
;; This file defines two hooks : htmlize-before-hook and htmlize-after-hook

(eval-when-compile
  (require 'cl))

(eval-after-load "asy-mode"
  '(progn

     (defface asy-xml-face
       `((t
          (:foreground "yellow")))
       "Face used to highlighting personal xml code.")
     (font-lock-add-keywords
      'asy-mode
      '(("/\\*\\(asy-xml.*?\\)\\*/" 1 'asy-xml-face prepend)))
     (defvar pi-htmlize-basic-character-table
       (let ((table (make-vector 128 ?\0)))
         (dotimes (i 128)
           (setf (aref table i) (if (and (>= i 32) (<= i 126))
                                    (char-to-string i)
                                  (format "&#%d;" i))))
         (setf
          (aref table ?\n) "\n"
          (aref table ?\r) "\r"
          (aref table ?\t) "\t"
          (aref table ?&) "&amp;"
          (aref table ?<) "<"
          (aref table ?>) ">"
          )
         table))

     (setq pi-htmlize-restricted-regexp
           "<asyxml>\\(\\(.\\|\n\\)*?\\)</asyxml>"
           ;; "Balises entre lesquelles le texte ne doit pas être 'htmlizer'."
           )

     (setq pi-htmlize-closed-tag
           (list "documentation" "code" "function" "variable"
                 "constant" "struct" "property" "method"
                 "operator" "typedef"))

     (setq pi-htmlize-non-closed-tag
           (list "url" "look" "view"))

     (setq pi-htmlize-protect-html-tag-regexp
           "\\(<html>\\(.\\|\n\\)*?</html>\\)"
           ;; "Balises entre lesquelles les caractère < et > ne seront pas modifés."
           )

     (defvar pi-htmlize-temp '())
     (defvar pi-htmlize-indent-all nil)

     (defun pi-htmlize-store-data()
       (when pi-htmlize-indent-all (pi-indent-whole-buffer))
       (beginning-of-buffer)
       (setq pi-htmlize-temp '())
       (while (re-search-forward
               pi-htmlize-restricted-regexp
               (point-max) t)
         (setq pi-htmlize-temp (cons (match-string 1) pi-htmlize-temp))
         (replace-match "@pi-htmlize-restricted@")))

     (add-hook 'htmlize-before-hook 'pi-htmlize-store-data)

     (defun pi-htlmize-restore-text (text)
       (save-excursion
         (with-temp-buffer
           (insert text)
           (let ((temp '()))
             ;; Protection du texte qui ne doit pas être rendu en html
             (while (re-search-backward
                     pi-htmlize-protect-html-tag-regexp
                     0 t)
               (setq temp (cons (match-string 1) temp))
               (replace-match "@pi-htmlize-html-protect@"))

             ;; Protection des balises de type <toto ...>...</toto>
             (dolist (ct  pi-htmlize-closed-tag)
               (beginning-of-buffer)
               (while (re-search-forward
                       (concat "<" ct "\\(\\(.\\|\n\\)*?\\)>")
                       (point-max) t)
                 (replace-match (concat "@begin_" ct "\\1@!begin_" ct)))
               (beginning-of-buffer)
               (while (re-search-forward (concat "</" ct ">") (point-max) t)
                 (replace-match (concat "@end_" ct))))

             ;; Protection des balises de type <toto .../>
             (dolist (ct  pi-htmlize-non-closed-tag)
               (beginning-of-buffer)
               (while (re-search-forward
                       (concat "<" ct "\\(\\(.\\|\n\\)*?\\)/>")
                       (point-max) t)
                 (replace-match (concat "@begin_" ct "\\1@!begin_" ct))))

             ;; Transformation des caractères spéciaux en html
             (let ((bufps (htmlize-protect-string (buffer-string))))
               (erase-buffer)
               (insert bufps))

             ;; restauration des balises du type <toto .../>
             (dolist (ct  pi-htmlize-non-closed-tag)
               (beginning-of-buffer)
               (while (re-search-forward
                       (concat "@begin_" ct "\\(\\(.\\|\n\\)*?\\)@!begin_" ct)
                       (point-max) t)
                 (replace-match (concat "<" ct "\\1/>"))))

             ;; restauration des balises du type <toto ...>...</toto>
             (dolist (ct  pi-htmlize-closed-tag)
               (beginning-of-buffer)
               (while (re-search-forward
                       (concat "@begin_" ct "\\(\\(.\\|\n\\)*?\\)@!begin_" ct)
                       (point-max) t)
                 (replace-match (concat "<" ct "\\1>")))
               (beginning-of-buffer)
               (while (re-search-forward (concat "@end_" ct) (point-max) t)
                 (replace-match (concat "</" ct ">"))))

             ;; Restauration du texte protégé de htmlize
             (beginning-of-buffer)
             (while (re-search-forward
                     "@pi-htmlize-html-protect@"
                     (point-max) t)
               (replace-match "" nil t)
               (princ
                (let ((htmlize-basic-character-table
                       pi-htmlize-basic-character-table))
                  (htmlize-protect-string (first temp)))
                (current-buffer))
               (setq temp (cdr temp))))
           (buffer-string))))

     (defun pi-htmlize-restore-data()
       (end-of-buffer)
       (while (re-search-backward
               "@pi-htmlize-restricted@"
               0 t)
         (replace-match "")
         (princ
          (pi-htlmize-restore-text
           (first pi-htmlize-temp)) (current-buffer))
         (setq pi-htmlize-temp (cdr pi-htmlize-temp)))
       (setq pi-htmlize-temp '())
       )

     (add-hook 'htmlize-after-hook 'pi-htmlize-restore-data)))

(provide 'pi-htmlize-hook)
;;; htmlize-hook.el ends here

;; Local variables:
;; coding: utf-8
;; End:

