FROM node:16

WORKDIR /usr/src/app

# copy package .json to root directory so we can run npm install
COPY package*.json ./

#Install Prettier (For package build function)
RUN npm install prettier -g

# Instll Files
RUN npm install

# Copy all source Files
COPY . .


EXPOSE 3000

CMD [ "npm", "start"]