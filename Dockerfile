# syntax=docker/dockerfile:1
FROM node:16.13.1

# when running production use this: ENV NODE_ENV=production

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . .

CMD ["node", "main.js"]