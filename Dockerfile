FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu
USER ubuntu
WORKDIR /home/ubuntu

COPY . .

RUN ls -la

RUN pip3 install -r src/requirements.txt

EXPOSE 5000

CMD ["python3","src/app.py"]
