FROM        node
WORKDIR     /home/node
COPY        node_modules/ node_modules/
COPY        package.json server.js ./
USER        node
ENTRYPOINT  ["node", "server.js"]
##
#FROM node 
#USER node
#WORKDIR /home/node
#COPY package.json server.js ./
#RUN npm install --omit=dev
#COPY . .
#ENTRYPOINT ["node", "server.js"]
#
#
#
#FROM node:18
#COPY package.json server.js ./
#RUN npm install --omit=dev
#USER node