version: '3.5'

services:
  db:
    image: postgres
    volumes:
      - ./tmp/db:/var/www/vulcan/db
  web:
    build: .
    command: 
      - "rails"
      - "server"
      - "-p"
      - "3030"
      - "-b"
      - '0.0.0.0'
    volumes:
      - .:/var/www/vulcan
    environment:
      RAILS_ENV: production
      RAILS_LOG_TO_STDOUT: "true"
      RAILS_SERVE_STATIC_FILES: "true"
      RAILS_RELATIVE_URL_ROOT: /vulcan
      PGDATA=/var/www/vulcan/db
      SECRET_KEY_BASE: ${VULCAN_SECRET_KEY_BASE}
      SECRET_DB_PW: ${VULCAN_SECRET_DB_PW}
    ports:
      - "3030:3030"
    depends_on:
      - db
