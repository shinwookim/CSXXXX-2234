SRC="./src/*.md"
rm -rf ./out
mkdir out
for s in $SRC; 
do
    echo "$s"
    npx @marp-team/marp-cli@latest --theme ./src/theme/pitt.css $s --html -o ./out/$(basename "$s" | sed 's/\(.*\)\..*/\1/').html
done
cp -r ./src/theme ./out/theme