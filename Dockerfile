FROM ubuntu:latest

RUN mkdir /app/devops

COPY . /app/devops

ENTRYPOINT app/index/santhosh

EXPOSE 9090/tcp

CMD "Santhosh"
