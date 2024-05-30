#selecting the base-image:
FROM node:14-alpine

#selecting working-directory:
WORKDIR /app

#copying the dependencies file:
COPY package.json .

#installing the dependencies:
RUN npm install

#copying the rest of files:
COPY . .

#exposing the application to the port:
EXPOSE 3000

#starting the container & when image is pulled to run:
CMD [ "npm", "start" ]


