SRC="src/*.md"
rm -rf ./out
mkdir out
for s in $SRC; 
do
    marp --theme ./src/theme/pitt.css $s --html -o ./out/$(basename "$s" | sed 's/\(.*\)\..*/\1/').html
done

