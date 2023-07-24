
for image in images/*.jpg; do
    filename=$(basename "$image")
    sips --resampleHeight 200 "$image" --out "preview/$filename"
done