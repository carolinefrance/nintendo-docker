# Helpful docker cmds
# docker image list
# docker ps -a or docker container list
# docker system prune or docker system prune -a --volumes    <-- deletes non-running images and containers
# docker build -t node-express-demo .                        <-- builds Docker image
# docker run -dp 3000:3000 --name node-express  node-express-demo
# docker stop node-express
# docker start node-express

FROM node:lts-alpine

WORKDIR /app

COPY . .
RUN npm install

EXPOSE 3000
CMD node server.js
