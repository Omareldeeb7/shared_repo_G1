FROM node:alpine3.20
WORKDIR /Application
COPY app.js .
CMD  ["app.js"]
ENTRYPOINT [ "node" ]
LABEL Maintainer="Ahmed Maged" Email="ahmeddmagedd957@gmail.com"
EXPOSE 8081