#!/bin/bash

FILE_WITHOUT_EXT=${1%.*}
[ "$FILE_WITHOUT_EXT" == "" ] && FILE_WITHOUT_EXT=$1

LC_CTYPE=LATIN1 pygmentize -f latex -O encoding=latin1 -- "${FILE_WITHOUT_EXT}.asy" | \
    sed '/{Verbatim}/d' > "${FILE_WITHOUT_EXT}.tex"

