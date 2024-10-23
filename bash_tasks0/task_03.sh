read -p "Emter the path to archivate:" dirpath

if [ -d "$dirpath" ]; then
	current_date=$(date +%Y-%m-%d)
	archive_name="$(basename "$dirpath")_$current_date.tar.gz"
	tar -czf "$archive_name" -C "$(dirname "$dirpath")" "$(basename "$dirpath")"
else
	echo "The path dsnt exists.."
fi

