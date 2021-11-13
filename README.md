# API Yatube
## _API сервер социальной сети Yatube, который поддерживает создание постов, комментарии к ним и взаимные подписки пользователей._

### Технологии:
Python, Django, Django RestFramework, Docker, Postgres и Nginx.

### Для запуска потребуется:
- Создать и запустить виртуальное окружение:
```bash
python -m venv venv
. venv/bin/activate
```
- Установить зависимости из файла requirements.txt
```bash
pip install -r requirements.txt
```
- Создать файл .env в корневой директории проекта и добавить переменные:
```
    DB_ENGINE=<СУБД проекта>
    DB_NAME=<название СУБД>
    POSTGRES_USER=<имя пользователя СУБД>
    POSTGRES_PASSWORD=<пароль пользователя СУБД>
    DB_HOST=<сервер размещения СУБД>
    DB_PORT=<порт доступа к СУБД>
    SECRET_KEY=<секретный ключ проекта>
    ALLOWED_HOSTS=<разрешённые сервера проекта>
    DEBUG=<False - для рабочего режима, True - для режима отладки>
```
- В папке с файлом manage.py выполнить команду:
```bash
docker-compose up -d
```
- Выполнить миграции:
```bash
docker-compose exec web python manage.py migrate
```
- Собрать статику: 
```bash
docker-compose exec web python manage.py collectstatic --no-input
```
- Задать суперпользователя:
```bash
docker-compose exec web python manage.py createsuperuser
```

### Может быть полезно:
- Установка Docker:
```bash
pip install docker
pip install docker-compose
```
- Клонирование с GitHub:
```bash
git clone https://<USERNAME>:<PASSWORD>@github.com/Danielseddian/yamdb_final-1
```
- Копиование образа с DockerHub:
```bash
docker pull danielseddian/yamdb_final
```
- Копиование образа с DockerHub:
```bash
docker pull danielseddian/yamdb_final
```

_Redoc проекта с инструкцией для доступа к API сервера: http://www.webtodo.xyz/redoc/_

![example workflow](https://github.com/Dudi001/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)