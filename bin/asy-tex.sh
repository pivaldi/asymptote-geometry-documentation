#! /bin/bash
LC_CTYPE=fr_FR.latin-1

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
sed -r 's/<\/*pre>//g' | sed '1,1d' > "${fic}_tmp" && mv "${fic}_tmp" "$fichtml"
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
        sed -r "$COMA;$COMB;$COMC;$COMD;$COME;$COMF;$COMG;$COMH;$COMI" | \
        sed '$d'> "${fictex}"
}

# if [ "$ficasy" -nt "$ficpdf" ]; then
    $graph && ( cd `dirname "$ficasy"` && $ASYCMD -wait -f pdf "$ficasy" )
    emacsclient -e '(progn(setq pi-htmlize-indent-all t)(htmlize-file "'${ficasy}'")(setq pi-htmlize-indent-all nil))' &&\
echo "Conversion en HTML de $ficasy" &&\
    texify
# fi
    echo '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@';

# Local variables:
# coding: latin-1
# End:
