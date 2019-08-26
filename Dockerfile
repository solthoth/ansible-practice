FROM microsoft/ansible

RUN pip install pywinrm
RUN mkdir /home/ansible

WORKDIR /home/ansible

COPY playbooks/hosts /etc/ansible/hosts
COPY . .

ENTRYPOINT ["/bin/bash"]