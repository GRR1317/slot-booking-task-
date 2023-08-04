FROM ubuntu
USER root
RUN apt update -y \
    && apt install nodejs -y \
    && apt install npm -y
COPY . .
EXPOSE 3000
ENTRYPOINT ["npm", "run", "start"]
