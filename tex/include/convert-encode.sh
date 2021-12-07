find . -maxdepth 1 -name "*.asy" -type f -print -exec iconv -f iso-8859-1 -t utf-8 "{}" -o utf8/"{}" \;
