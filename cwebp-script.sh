mkdir -p converted
mkdir -p thumbs

# --------------------------------------------------
# for PNG files
# for FILE in *.png; do
# 	trimmed=$(echo "$FILE" | cut -f 1 -d '.')
# 	# echo "$trimmed.webp";

# 	cwebp "$FILE" -o "converted/$trimmed.webp"
# 	cwebp "$FILE" -o "thumbs/$trimmed.thumbs.webp" -q 0
# done

# # --------------------------------------------------
# # for JPG files
# for FILE in *.jpg; do
# 	trimmed=$(echo "$FILE" | cut -f 1 -d '.')
# 	# echo "$trimmed.webp";

# 	cwebp "$FILE" -o "converted/$trimmed.webp"
# 	cwebp "$FILE" -o "thumbs/$trimmed.thumbs.webp" -q 0
# done

for FILE in *.{png,jpg}; do
	trimmed=$(echo "$FILE" | cut -f 1 -d '.')
	# echo "$trimmed.webp";

	cwebp "$FILE" -o "converted/$trimmed.webp"
	cwebp "$FILE" -o "thumbs/$trimmed.thumbs.webp" -q 0
done
