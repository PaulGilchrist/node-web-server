# docker build --rm -f "Dockerfile" -t paulgilchrist/node-web-server:latest .
# docker run -d -p 80:3000 paulgilchrist/node-web-server
# docker rm -f <containerID>
FROM node
RUN mkdir -p /usr/src/app
COPY package.json /usr/src/app/package.json
COPY index.js /usr/src/app/index.js
COPY web.config /usr/src/app/web.config
WORKDIR /usr/src/app
RUN npm install
# docker push paulgilchrist/node-web-server