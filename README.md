# docker-node-app

We can install docker from here https://docs.docker.com/engine/installation/ubuntulinux/

Tag, push, and pull your docker image https://docs.docker.com/mac/step_six/

sudo docker pull ubuntu

cd docker-node-all

sudo docker build -t ubuntu .

sudo docker run -p 49160:8080 -d ubuntu

then run in browser http://localhost:49160/
