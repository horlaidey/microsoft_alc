FROM mhart/alpine-node

RUN mkdir lab/ 

COPY package.json lab/package.json

RUN cd lab/ && npm install

RUN mkdir project/ && cp lab/node_modules project/

WORKDIR project/

ADD . project/

EXPOSE 3000

CMD "node, server.js"
