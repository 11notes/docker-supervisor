![Banner](https://github.com/11notes/defaults/blob/main/static/img/banner.png?raw=true)

# 🏔️ Alpine - supervisor
![size](https://img.shields.io/docker/image-size/11notes/supervisor/stable?color=0eb305) ![version](https://img.shields.io/docker/v/11notes/supervisor/stable?color=eb7a09) ![pulls](https://img.shields.io/docker/pulls/11notes/supervisor?color=2b75d6) ![stars](https://img.shields.io/docker/stars/11notes/supervisor?color=e6a50e) [<img src="https://img.shields.io/badge/github-11notes-blue?logo=github">](https://github.com/11notes)

**Run multiple processes in Alpine*

# SYNOPSIS
What can I do with this? It’s meant to be a base image if you really need to run multiple services in a single image and want to use supervisord.

# VOLUMES
* **/supervisor/etc** - Directory of configuration files for services

# COMPOSE
```yaml
file ../docker-supervisor/compose.yaml not found!
```

# DEFAULT SETTINGS
| Parameter | Value | Description |
| --- | --- | --- |
| `user` | docker | user docker |
| `uid` | 1000 | user id 1000 |
| `gid` | 1000 | group id 1000 |
| `home` | /supervisor | home directory of user docker |

# ENVIRONMENT
| Parameter | Value | Default |
| --- | --- | --- |
| `TZ` | [Time Zone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) | |
| `DEBUG` | Show debug information | |

# PARENT IMAGE
* [11notes/alpine:stable](https://hub.docker.com/r/11notes/alpine)

# SOURCE
* [11notes/docker-supervisor](https://github.com/11notes/docker-supervisor)

# BUILT WITH
* [supervisor](http://supervisord.org/introduction.html)
* [alpine](https://alpinelinux.org)

# TIPS
* Use a reverse proxy like Traefik, Nginx to terminate TLS with a valid certificate
* Use Let’s Encrypt certificates to protect your SSL endpoints

# ElevenNotes<sup>™️</sup>
This image is provided to you at your own risk. Always make backups before updating an image to a new version. Check the changelog for breaking changes. You can find all my repositories on [github](https://github.com/11notes).
    