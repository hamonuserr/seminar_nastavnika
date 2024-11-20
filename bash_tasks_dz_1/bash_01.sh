if [ -z "$1" ]; then
  echo "Usage: ./$0 <имя_файла>"
  exit 1
fi

file_to_check="$1"
if [ -e "$file_to_check" ]; then
  echo "Файл '$file_to_check' существует."
else
  echo "Файл '$file_to_check' не найден."
fi

echo "Информация о файлах:"
for file in *; do
  permissions=$(stat -c "%A" "$file")
  if [ -f "$file" ]; then
    echo "$file - файл, доступ - $permissions"
  elif [ -d "$file" ]; then
    echo "$file - каталог, доступ - $permissions"
  elif [ -L "$file" ]; then
    echo "$file -символьная ссылка, доступ - $permissions"
  else
    echo "$file - другой тип файла, доступ - $permissions"
  fi
done
