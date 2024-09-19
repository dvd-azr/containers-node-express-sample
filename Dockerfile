# Use Node.js v14
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install
RUN npm install pm2 -g

# Bundle app source
COPY . .

# Expose the port
EXPOSE 3000

# CMD [ "node", "app.js" ]
# CMD [ "npm", "run","pm2" ]

CMD [ "pm2-runtime", "ecosystem.config.js" ]
