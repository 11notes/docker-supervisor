#!/bin/ash
  if [ ! -z "${1}" ]; then
    elevenLogJSON info "starting ${APP_NAME}"
    set -- "supervisord" \
      -c /etc/supervisord/default.conf
  fi

  exec "$@"