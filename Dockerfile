FROM    ubuntu:14.04

RUn 	sudo apt-get install -y curl
RUN     curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN 	sudo apt-get install -y nodejs
RUN 	sudo npm install npm -g -y

RUN	cd home/; mkdir node-app
COPY package.json home/node-app/package.json
COPY src/index.js home/node-app/index.js

RUN cd home/node-app/; npm install

EXPOSE  8080

CMD ["node", "home/node-app/index.js"]
