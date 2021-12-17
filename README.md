# my-cheatsheet
varios comandos útiles

## Bash
### Search text in files

```bash
grep -Ril "text-to-find-here" /
```
[source](https://stackoverflow.com/questions/16956810/how-do-i-find-all-files-containing-specific-text-on-linux)

### Print datetime and ping every 30 seconds
```bash
ping -i 5 google.com | xargs -L 1 -I '{}' date '+%Y-%m-%d %H:%M:%S: {}'
```
[source](https://stackoverflow.com/a/37475916)

## SSH
```bash
ssh root@8.8.8.8
```


## Postgres

### Instalacion ubuntu
```bash
sudo apt-get install postgresql postgresql-contrib
```

### Conectarse a postgres
```bash
sudo -u postgres psql
```

### Cambiar password
```bash
alter user postgres with password 'new-password';
```

### Listar base de datos
```\l```

### Salir
```\q```

## postgresql-12-4
Docker postgrest 12.4

```bash
sudo docker-compose up -d
```


