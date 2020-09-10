FROM node:10-alpine

# instalar un simple servidor http para servir nuestro contenido estático
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# hacer la carpeta 'app' el directorio de trabajo actual
WORKDIR /home/node/app

# copiar 'package.json' y 'package-lock.json' (si están disponibles)
COPY package*.json ./

USER node

# instalar dependencias del proyecto
RUN npm install

# copiar los archivos y carpetas del proyecto al directorio de trabajo actual (es decir, la carpeta 'app')
COPY --chown=node:node . .

# construir aplicación para producción minificada
RUN npm run build

EXPOSE 8080
CMD [ "npm", "run", "build" ]