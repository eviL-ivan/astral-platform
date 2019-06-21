FROM node:10.15.1-alpine

WORKDIR /usr/src/astral-platform

# записать package.json в docker
COPY package*.json ./

# установить пакеты
RUN npm install

COPY . .

CMD [ "npm", "start" ]
