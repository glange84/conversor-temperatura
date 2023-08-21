FROM node
WORKDIR /app
RUN apt update -y
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "server.js"]