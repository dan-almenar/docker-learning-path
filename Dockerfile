FROM ubuntu:latest

RUN touch my-file && echo "succesfully created new file"
RUN apt-get update
RUN apt-get install -y nano

CMD "cat" "/etc/lsb-release"; "nano" "my-file"