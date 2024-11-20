if [ -z "$1" ]; then
    echo "Usage ./$0 <filename>"
    exit 1
fi

export PATH="$PATH/$1"

echo "$PATH"

#Изменения переменной PATH поскольку работают только для текущей сесси терминала.
#Для решения проблемы создадим файл: ~/.bashrc
#Вставим в файл: export PATH="$PATH/$1"
