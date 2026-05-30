FROM node:20-alpine

WORKDIR /app

COPY exl_main.zip .

RUN unzip exl_main.zip && \
    rm exl_main.zip && \
    npm install && \
    npm run build

EXPOSE 3000

CMD ["node", "server.js"]
