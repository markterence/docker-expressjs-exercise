# Learning NodeJS and Docker

```bash
# create the initial image based on Dockerfile and start the container.
# application logs will be shown after.
# pressing `CTRL+C` in the terminal will also stop the container
docker-compose up

# run the container in de-attached mode
docker-compose up -d

# build the image
docker-compose up --build

# remove the container and volume
docker-compose down -v
```

```dockerfile
# use node slim to install packages.
FROM node:8.11.2-slim AS build

RUN mkdir -p /my-app-1
WORKDIR /my-app-1
COPY ./package.json /my-app-1/.
# install packages first
RUN npm install
# copy source dir to /my-app-1 (workdir)
COPY . .
# start the app (node app.js)
CMD ["npm", "start"]
```