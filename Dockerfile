FROM node:20

RUN npm install || true

COPY . .

EXPOSE 8081

CMD ["node", "app.js"] 
