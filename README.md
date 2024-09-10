# Actividad integradora de Docker

### Alumno: Christian Acevedo

Para esta actividad creé un docker compose con 2 contenedores, un Nginx y un Apache que contiene una aplicación web compilada que tenia de un emprendimiento viejo, tiene una network para que comunique ambos contenedores y crea un volumen para alojar el **`nginx.conf`** que expone el apache en el puerto 80 y tiene configurado un endpoint
#

##  Arquitectura

```mermaid
graph TD
B((Nginx Server)) --> C[Apache WEB Server]


```
#

## Buildeo

Se debe ejecutar en el siguiente comando

```sh
docker compose up -d
```

Deberá generar 2 contenedores:

```sh
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                                   NAMES
620b85c5e648   nginx:latest   "/docker-entrypoint.…"   4 seconds ago   Up 3 seconds   0.0.0.0:80->80/tcp, :::80->80/tcp       nginx_proxy
bd2d4bdd4420   temp-apache    "httpd-foreground"       4 seconds ago   Up 3 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   ajisoso_web_app
```
#

## Imput 

una vez levantado el docker compose, se puede hacer un **`CURL localhost/healthCheck`**. esto debe devolver un json con el estado de la aplicación, deberá verse de la siguiente forma

```sh
{
    "status": "OK",
    "message": "Trabajo Integrador Docker"
}
```

