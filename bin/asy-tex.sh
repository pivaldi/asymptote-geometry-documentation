#! /bin/bash

# Copyright (c) 2011, Philippe Ivaldi <www.piprime.fr>
# Version: $Id: asy-tex.sh,v 0.0 2011/06/26 15:27:39 Exp $
# $Last Modified on 2011/06/26

# This program is free software ; you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation ; either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY ; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public License
# along with this program ; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

ASYCMD="/usr/local/bin/asy"
graph=true

while true
do
    case $1 in
        -nog)
	    graph=false
            fic="`pwd`/include/$2"
            ;;
        *)
            fic="`pwd`/include/$1"
            break
            ;;
    esac
    shift
done

ficasy="${fic}.asy"
fichtml="${ficasy}.html"
fictex="${fic}.tex"
ficpdf="${fic}.pdf"

function texify()
{
    cat "$fichtml" | awk -v FS="^Z" "/<pre>/,/<\/pre>/" |\
    LC_CTYPE='fr_FR.latin-1' sed -r 's/<\/*pre>//g' | LC_CTYPE='fr_FR.latin-1' sed '1,1d' > "${fic}_tmp" && mv "${fic}_tmp" "$fichtml"
    COMA='s!<span class="([a-z|-]*)">!£~color£\1\`!g'
    COMB='s!</span>!`!g'
    COMC='s!&lt;!<!g'
    COMD='s!&gt;!>!g'
    COME='s!&#233;!é!g'
    COMF='s!&#232;!è!g'
    COMG='s!&#231;!ç!g'
    COMH='s!&#224;!à!g'
    COMI='s!&amp;!\\&!g'
    cat "${fichtml}" | \
        LC_CTYPE='fr_FR.latin-1' sed -r "$COMA;$COMB;$COMC;$COMD;$COME;$COMF;$COMG;$COMH;$COMI" | \
        LC_CTYPE='fr_FR.latin-1' sed '$d'> "${fictex}"
}

# if [ "$ficasy" -nt "$ficpdf" ]; then
    $graph && ( cd `dirname "$ficasy"` && $ASYCMD -wait -f pdf "$ficasy" )
    emacsclient -e '(progn(setq pi-htmlize-indent-all t)(htmlize-file "'${ficasy}'")(setq pi-htmlize-indent-all nil))' &&\
echo "Conversion en HTML de $ficasy" &&\
    texify
# fi

# Local variables:
# coding: latin-1
# End:
