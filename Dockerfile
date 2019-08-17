FROM microsoft/ansible

RUN pip install pywinrm
RUN mkdir /home/ansible

WORKDIR /home/ansible

COPY playbook/hosts /etc/ansible/hosts
COPY . .

ENTRYPOINT ["/bin/bash"]