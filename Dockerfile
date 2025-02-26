# Usa una imagen base de Node.js
FROM node:14

# Crea y establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el código fuente de la aplicación
COPY . .

# Expone el puerto en el que se ejecuta la app
EXPOSE 8080

# Define el comando para iniciar la aplicación
CMD ["node", "app.js"]