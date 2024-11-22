FROM node:20-alpine

WORKDIR /usr/src/app

COPY app.js .

EXPOSE 8081

CMD ["node", "app.js"]

