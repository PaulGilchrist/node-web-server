# Node Web Server

## Operating system agnostic static web server perfect for hosting Angular applications

Just combine the contents of this folder with your Angular's distribution folder and launch with the command ```node index.js```.  Optionally this project can be built into a Docker container then your Angular dist folder can be added into the container's ```/usr/src/app``` folder.

Example Angular project Dockerfile:

```docker
FROM paulgilchrist/node-web-server
COPY dist /usr/src/app
WORKDIR /usr/src/app
EXPOSE 3000
CMD [ "node", "index.js" ]
```

If using Docker, there are two files to support either Linux (```Dockerfile``` to build ```node-web-server```) or Windows (Dockerfile.node to build ```node-nano-web-server```).  Make sure to build your Angular container from the appropriate parent container based on which operating system you would like to use for hosting the web server.  