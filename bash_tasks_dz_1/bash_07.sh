# alias ll='ls -la' 
# И кладем его в:
# nano ~/.bashrc
# Дописываем в конец alias ll='ls -la'
# cd $(compgen -A directory so | head -n 1) - переход в первый найденный каталог начинающийся на so
# compgen -A directory so выводит список каталогов на so

