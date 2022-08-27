FROM node:latest
RUN mkdir /projects
RUN mkdir /www
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
WORKDIR /projects
RUN npm install -g @11ty/eleventy
ENTRYPOINT '/bin/bash /docker-entrypoint.sh'