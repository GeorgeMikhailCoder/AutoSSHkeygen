# Всё выполняем в git-bash:

# 0. Запрашиваем почту
read -n50 -r -p "Enter your email (connected to git accaunt): " user_email

# 1. Генерируем ключ
ssh-keygen -t ed25519 -C $user_email
# (enter, enter, enter, enter)

# 2. Проверяем, запущен ли клиент ssh на локальной машине:
eval "$(ssh-agent -s)"

# 3. Добавляем ключ в клиент на локальной машине
ssh-add ~/.ssh/id_ed25519

# 4. Копируем публичный ключ в буфер обмена:
clip < ~/.ssh/id_ed25519.pub

# 5. Вставляем его в созданый на гитхабе ssh. (сообщение)
read -n1 -r -p "key copied in buffer to paste on github" key