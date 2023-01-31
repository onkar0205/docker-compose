# FROM node:latest
# WORKDIR /app
# COPY package*.json ./app 
# RUN npm install 
# COPY . .
# EXPOSE 8081
# CMD [ "node","start" ]
FROM node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY ./ .
EXPOSE 8081
CMD ["node","index.js"]