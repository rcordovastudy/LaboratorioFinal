# Usa una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /root/LaboratorioFinal/

# Copia los archivos del proyecto al directorio de trabajo
COPY . .

# Instala las dependencias del proyecto
RUN npm install

# Expone el puerto en el que la aplicación estará escuchando
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]