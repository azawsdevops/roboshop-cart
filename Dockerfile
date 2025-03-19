
FROM node:20-slim
WORKDIR /home/node
#COPY package.json server.js ./
COPY . .
RUN npm install
ENTRYPOINT ["node", "server.js"]
