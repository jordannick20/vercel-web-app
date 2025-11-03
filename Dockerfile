# pull basic node image from docker hub (alpine is a scaled down image for size)
# this image includes node and npm ready to use
FROM node:22-alpine3.20
# Working directory be app
WORKDIR /usr/app
COPY package*.json ./
# Install dependencies
RUN npm install
# copy local files to app folder
COPY . .
CMD ["npm","run","dev"]