#choosing the base image:
FROM node:16-alpine

#choosing working directory for the application:
WORKDIR /app

#copying the package.json file to app directory and installing packages:
COPY package.json .
RUN npm install

#copying the rest of application code to the working directory:
COPY . .

#building the application:
RUN npm run build 

#exposing the application:
EXPOSE 3000

#Executing the application after creating image:
CMD ["npm", "start"]
