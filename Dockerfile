FROM node:16

WORKDIR /app

COPY . .
RUN npm i
RUN npm run build
RUN mkdir config

EXPOSE 80
CMD HOST=0.0.0.0 PORT=80 node dist/server/entry.mjs