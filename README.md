# my-cheatsheet
varios comandos útiles

## Bash
### Search text in files

```grep -Ril "text-to-find-here" / ```

<code> source: https://stackoverflow.com/questions/16956810/how-do-i-find-all-files-containing-specific-text-on-linux </code>

### Print datetime and ping every 30 seconds
```bash
ping -i 5 google.com | xargs -L 1 -I '{}' date '+%Y-%m-%d %H:%M:%S: {}'
```
```source: https://stackoverflow.com/a/37475916```

## SSH
```bash
ssh root@8.8.8.8
```


## Postgres

### Instalacion ubuntu
```sudo apt-get install postgresql postgresql-contrib```

### Conectarse a postgres
```sudo -u postgres psql```

### Cambiar password
```alter user postgres with password 'new-password';```

### Listar base de datos
```\l```

### Salir
```\q```

## postgresql-12-4
Docker postgrest 12.4

```sudo docker-compose up -d```


