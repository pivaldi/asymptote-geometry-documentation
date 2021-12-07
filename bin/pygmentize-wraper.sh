#!/bin/bash

FILE_WITHOUT_EXT=${1%.*}
[ "$FILE_WITHOUT_EXT" == "" ] && FILE_WITHOUT_EXT=$1

pygmentize -f latex -- "${FILE_WITHOUT_EXT}.asy" | \
    sed '/{Verbatim}/d' > "${FILE_WITHOUT_EXT}.tex"

