# Usa una imagen base de alpine
FROM alpine:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia tu aplicación al directorio de trabajo en el contenedor
COPY . .

# Instala cualquier dependencia si es necesario
# RUN npm install

# Ejecuta el comando deseado para tu aplicación
CMD ["echo", "Hello, world!"]