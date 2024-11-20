exec 2>> error.log
	
cat < ./input.txt >&2 
if [[ -f ./input.txt ]]; then
    wc -l < ./input.txt > output.txt
    echo "Результат подсчета строк записан в output.txt."
else
    echo "Файл input.txt не найден, подсчет строк невозможен."
fi
