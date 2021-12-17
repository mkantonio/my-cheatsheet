# my-cheatsheet
varios comandos útiles

## Bash
### Search text in files

```grep -Ril "text-to-find-here" / ```

<code> source: https://stackoverflow.com/questions/16956810/how-do-i-find-all-files-containing-specific-text-on-linux </code>

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


