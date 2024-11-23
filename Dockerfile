FROM node:12.22.9
WORKDIR /app
COPY app.js app.js
RUN npm install
COPY . .
CMD [ "node", "app.js"]
