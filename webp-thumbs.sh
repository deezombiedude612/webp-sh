mkdir -p thumbs

# --------------------------------------------------
# for PNG files
for FILE in *.webp; do
	trimmed=$(echo "$FILE" | cut -f 1 -d '.')

	cwebp "$FILE" -o "thumbs/$trimmed.thumbs.webp" -q 0
done
