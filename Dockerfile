# Imagem base
FROM python:3

# Diretório de trabalho
WORKDIR /usr/src/app

# Copiando o arquivo package.json e package-lock.json para a pasta de trabalho
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Iniciando o servidor nginx
COPY . .
CMD [ "python", "./app.py" ]


# -> OLD
#services:
#  backend:
#    image: "spotmusic-backend"
#    ports:
#      - "5000:8080"
#    environment:
#        PORT: 8080
#        CLOUD_SQL_USERNAME: playuser
#        CLOUD_SQL_PASSWORD: 123456
#        CLOUD_SQL_DATABASE_NAME: playlist
#        DB_LOCAL_HOST: db
