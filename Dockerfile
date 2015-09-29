# Dockerfile to create a docker image
FROM node

RUN npm install --save express
RUN npm install --save socket.io

# Add files to the image
RUN mkdir -p /opt/nodejs
ADD . /opt/nodejs
WORKDIR /opt/nodejs

# Expose the container port
EXPOSE 5000

ENTRYPOINT ["node", "index.js"]
