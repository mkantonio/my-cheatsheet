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

### Folder size
```bash
sudo du -sh /home/user/*
```
[source](https://linuxize.com/post/how-get-size-of-file-directory-linux/)

### Sort folder size
```bash
du -sh * | sort -h
```
[source](https://stackoverflow.com/questions/1019116/using-ls-to-list-directories-and-their-total-sizes)

### Move block files in distinct folder each one
```bash
#!/bin/bash

# Definir el número de archivos por bloque
num_archivos_bloque=300

# Definir el nombre base para las carpetas de destino
nombre_carpeta_destino="bloque"

# Crear una carpeta para cada bloque de archivos
bloque=0
contador=0
mkdir -p "$nombre_carpeta_destino$bloque"
for archivo in *.jpg; do
    if [ $((contador % num_archivos_bloque)) -eq 0 -a $contador -ne 0 ]; then
        ((bloque++))
        mkdir -p "$nombre_carpeta_destino$bloque"
    fi
    mv "$archivo" "$nombre_carpeta_destino$bloque/"
    ((contador++))
done

echo "Se han movido $contador archivos en $((bloque+1)) bloques."

```

### SSH
```bash
ssh root@8.8.8.8
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
```bash
sudo umount /dev/sdb5nano /etc/fstab
sudo ntfsfix /dev/sdb5
sudo mount -o remount,rw /dev/sdb5
```
## YT-DLP
descargar con nombre de 100B de longitud de video
```bash
yt-dlp -a urls.txt -o "%(title).200B.%(ext)s" -P /home/user/videos/ --restrict-filenames
```
