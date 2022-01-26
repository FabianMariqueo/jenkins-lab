FROM jenkins/jenkins

USER root

RUN apt update && apt install -y python3 python3-distutils iputils-ping
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"

RUN python3 get-pip.py

RUN pip install -U ansible

USER jenkins