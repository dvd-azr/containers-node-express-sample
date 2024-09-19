# Use Node.js v14
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install
RUN npm install pm2 -g
RUN pm2 link 7wnq70sl921wgnk pk6ql0st8coh6ff

# Bundle app source
COPY . .

# Expose the port
EXPOSE 3000

# CMD [ "node", "app.js" ]
CMD [ "npm", "run","pm2" ]
# CMD [ "pm2", "start", "--public", "7wnq70sl921wgnk", "--secret", "pk6ql0st8coh6ff", "app.js" ]
# CMD [ "pm2", "start", "app.js" ]
