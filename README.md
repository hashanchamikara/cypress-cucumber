# Cypress Cucumber Test Runner

This project is aimed at providing a comprehensive guide on how to set up and run the project both locally and with Docker. It includes instructions for running tests, formatting code, and using Cypress for end-to-end testing.

## How to Run Locally

To run the project locally, follow these steps:

1. Install dependencies:

```
npm install
```


2. Run tests:

```
npm run test
```

This command will format your code, verify it, and run all test stories.

3. Code formatting:
To format your code, use:

```
npm run format
```


4. Open Cypress console:

```
npm run cypress:open
```


## How to Run with Docker

To run the project with Docker, follow these steps:

### Dockerfile

```Dockerfile
# Use the official Cypress Docker image as the base image
FROM cypress/included:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

EXPOSE 8080
EXPOSE 5432

CMD ["npm", "run", "cypress:run"]
```

## Build Docker Image

Build the Docker image using the following command:

```
docker build -t <image_name> .
```

## Run Docker Container

Run the Docker container with the following command:

```
docker run -v $(pwd)/cypress:/app/cypress -v $(pwd)/cypress.config.ts:/app/cypress.config.ts -v $(pwd)/tsconfig.json:/app/tsconfig.json -it <image_name>
```

Replace **<image_name>** with your desired image name.

This will mount your Cypress folder, Cypress configuration file, and TypeScript configuration file into the Docker container and execute the Cypress tests.
