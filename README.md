# my-cheatsheet
varios comandos útiles

## Bash

### chown
Cambiar propietario de archivos, directorios (-R) y enlaces simbólicos (-h)
```bash
chwon user:group /AbsolutePath
chwon user:group ./RelativePath
chwon -R user:group ./RelativePath
chwon -h user:group enlaceSimbolico
```

### Search text in files

```bash
grep -Ril "text-to-find-here" /
```
[source](https://stackoverflow.com/questions/16956810/how-do-i-find-all-files-containing-specific-text-on-linux)

### Print datetime and ping every 30 seconds
```bash
ping -i 30 google.com | xargs -L 1 -I '{}' date '+%Y-%m-%d %H:%M:%S: {}'
```
[source](https://stackoverflow.com/a/37475916)

### Sort folder size
```bash
du -sh * | sort -h
```

## SSH
```bash
ssh root@8.8.8.8
```
## Folder size
```bash
sudo du -sh /home/user/*
```
[source](https://linuxize.com/post/how-get-size-of-file-directory-linux/)


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

## Errors in GNU/Linux
### Error: read only file system
Others name:
* read only file system
* folder lock
* folders showing lock icon

```bash
mount -o remount,rw /dev/sdXx
```
[source](https://www.linuxadictos.com/solucion-al-error-read-only-file-system.html)
```bash
sudo blkid
nano /etc/fstab
sudo mount -a
reboot
```
[source-2](https://www.youtube.com/watch?v=FnSJBSTobVo&t=2s)

## YT-DLP
descargar con nombre de 100B de longitud de video
```bash
yt-dlp -a urls.txt -o "%(title).200B.%(ext)s" -P /home/user/videos/ --restrict-filenames
```
