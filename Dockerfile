FROM node:10 
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm run build
RUN pwd

EXPOSE 3000

CMD ["node", "./build/server.js"]