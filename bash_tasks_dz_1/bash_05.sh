sleep 25 &  
sleep 15 &  
sleep 18 &

# Время на запуск
sleep 1

# Показываем текущие фоновые задачи
echo "Текущие фоновые задачи:"
jobs

# Первая задача на передний план:
echo "Переводим первую задачу на передний план:"
fg %1

# После завершения первой задачи, показываем оставшиеся фоновые:
echo "Фоновые задачи после завершения первой:"
jobs

# Переводим вторую задачу на передний план

echo "Вторая задача на передний план:"
fg %2

echo "Фоновые задачи после завершения текущей:"
jobs

echo "Третья задача на передний план:"
fg %3

# Все задачи завершены!
echo "Конец"
