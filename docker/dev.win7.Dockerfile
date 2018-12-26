FROM node:8.11.2-slim AS build
RUN mkdir -p /my-app-1
WORKDIR /my-app-1
COPY ./package.json /my-app-1/.
RUN npm install
COPY . .
CMD ["npm", "start"]