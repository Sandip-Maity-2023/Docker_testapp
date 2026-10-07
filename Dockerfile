# FROM node

# ENV MONGO_DB_USERNAME=admin \
#     MONGO_DB_PWD=qwerty


# RUN mkdir -p Docker_testapp

# COPY . /Docker_testapp

# CMD ["node", "/Docker_testapp/server.js"]



FROM node:22

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

WORKDIR /Docker_testapp


COPY package*.json ./
RUN npm install

COPY . .

CMD ["node", "server.js"]

