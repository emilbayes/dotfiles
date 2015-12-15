DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for file in "$DIR"/*-global
do
   filename=$(basename "$file")
   cp "$file" ~/."${filename%-global}"
done
