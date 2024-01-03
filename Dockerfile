FROM node:10.23.0-alpine

WORKDIR apps

COPY . .

RUN npm install

RUN npm install pm2 -g

EXPOSE 3000

CMD ["pm2-runtime", "ecosystem.config.js"]
