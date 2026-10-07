FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty


RUN mkdir -p Docker_testapp

COPY . /Docker_testapp

CMD ["node", "/Docker_testapp/server.js"]

 







