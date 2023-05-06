services:
  backend:
    image: "spotmusic-backend"
    ports:
      - "5000:8080"
    environment:
        PORT: 8080
        CLOUD_SQL_USERNAME: playuser
        CLOUD_SQL_PASSWORD: 123456
        CLOUD_SQL_DATABASE_NAME: playlist
        DB_LOCAL_HOST: db