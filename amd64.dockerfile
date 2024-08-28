# :: Base
  FROM 11notes/alpine:stable
  ENV APP_NAME=supervisor
  ENV APP_ROOT=/supervisor

  USER root

  # :: install application
    RUN set -ex; \
      apk --no-cache --update add \
        supervisor; \
      apk --no-cache --update upgrade; \
      mkdir -p ${APP_ROOT}/etc; \
      mkdir -p ${APP_ROOT}/run;
      

  # :: copy root filesystem changes and add execution rights to init scripts
    COPY ./rootfs /
    RUN set -ex; \
      chmod +x -R /usr/local/bin;

  # :: change home path for existing user and set correct permission
    RUN set -ex; \
      usermod -d ${APP_ROOT} docker; \
      chown -R 1000:1000 \
        ${APP_ROOT};

# :: Volumes
  VOLUME ["${APP_ROOT}/etc"]

# :: Start
	USER docker
	ENTRYPOINT ["/usr/bin/supervisord"]
  CMD ["-c /etc/supervisord/default.conf"]