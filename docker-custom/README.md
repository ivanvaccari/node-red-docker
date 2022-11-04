# Node-RED Docker Image based on Debian

This docker image was created using the official [nodered custom build tutorial](https://github.com/node-red/node-red-docker/tree/master/docker-custom#build-your-own-docker-image).

This image is identical to the official one, but it's built using **debian-slim** instead of **alpine**, so it uses **glibc** instead of **musl libc**.

If you don't know what does this implies, then you probably should stick to the **official** nodered image.

For parameters, see [https://github.com//node-red/node-red-docker](https://github.com//node-red/node-red-docker).
