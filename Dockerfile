FROM node:12.10.0

# Create directory where we will place the application
WORKDIR /usr/src/app

# Copy application source code to the image
COPY . .

#Create new demo project
RUN npm install

# How we will run application
ENTRYPOINT npm run docs-serve

#Expose running port
EXPOSE 9001
