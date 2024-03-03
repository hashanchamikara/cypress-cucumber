# Use the official Cypress Docker image as the base image
FROM cypress/included:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

EXPOSE 8080
EXPOSE 5432

CMD ["npm", "run", "cypress:run"]