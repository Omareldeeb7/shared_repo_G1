FROM node
WORKDIR /Desktop/depirepo/shared_repo_G1
COPY package*.json app.js ./

EXPOSE 8081
CMD ["node","app.js"]