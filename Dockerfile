FROM node
MAINTAINER Annelise Anderson, Emma Bastian
# install deps
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
# Copy deps
RUN mkdir -p /opt/cake && cp -a /tmp/node_modules /opt/cake
# Setup workdir
WORKDIR /opt/cake
COPY . /opt/cake
# run
EXPOSE 3000
CMD ["node", "index.js"]
