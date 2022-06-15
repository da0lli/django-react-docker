FROM node:16.15.0-alpine

WORKDIR /app/

# Install dependencies
COPY package.json package-lock.json /app/

RUN npm install

# Add rest of the client code
COPY . /app/

EXPOSE 3000

CMD npm start

#docker run -v $PWD/frontend:/frontend_app -p 3000:3000 frontend:latest npm start