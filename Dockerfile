FROM node:alpine

# node gyp a dep needs python 
RUN apk add g++ make python

WORKDIR '/app'

COPY package.json .
RUN npm install

COPY . .

CMD ["npm", "run", "build"]

CMD ["npm", "run", "start"]
