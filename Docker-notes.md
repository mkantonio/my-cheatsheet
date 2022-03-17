# Docker notes

## Run docker without sudo
[Ejecutar docker sin ser root](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user)

1 - Create the docker group.
```bash
sudo groupadd docker
```
2 - Add your user to the docker group.
```bash
sudo usermod -aG docker $USER
```
3 - Log out and log back in so that your group membership is re-evaluated.

4 - Verify that you can run docker commands without sudo.
```bash
docker run hello-world
```

## Run docker with sudo
[Source](https://laracasts.com/discuss/channels/laravel/docker-is-not-running-when-installing-laravel-from-linux)
```bash
curl -s https://laravel.build/example-app | bash
```