FROM microsoft/ansible

RUN apt-get update && apt-get install iputils-ping -y
RUN mkdir /home/ansible

WORKDIR /home/ansible

COPY . .

ENTRYPOINT ["/bin/bash"]