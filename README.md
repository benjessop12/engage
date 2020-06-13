# Run

Bare bones Django web app / sql server which run in docker containers.

No functionality, use for starting new projects.

```bash
docker-compose build
docker-compose up
docker-compose exec db mysql -uroot -ppassword
ALTER USER 'root' IDENTIFIED WITH mysql_native_password by 'password';
exit;
docker-compose exec app python3 manage.py migrate --no-input
```

```bash
docker-machine ip
```

Add the ip to the ALLOWED_HOSTS array in settings.py

To view the app:
```bash
<docker-machine ip>:8000
```
