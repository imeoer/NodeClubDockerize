FROM node:4.6.0
RUN apt-get update; apt-get -y install git
RUN git clone https://github.com/cnodejs/nodeclub.git && cd nodeclub && make install
WORKDIR nodeclub
ADD config.js config.js
EXPOSE 3000
CMD node app.js