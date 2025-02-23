FROM node:19.6.0

# Create app directory
WORKDIR /opt

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production

# Bundle app source
COPY . .

EXPOSE 80
CMD [ "node", "server.js" ]
