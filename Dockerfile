FROM python:3.10
EXPOSE 8501 
WORKDIR /app
ARG USERNAME=metaflow
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME &&\
 useradd --uid $USER_UID --gid $USER_GID -m $USERNAME &&\
 apt-get update &&\
 apt-get install -y sudo &&\
 echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME &&\
 chmod 0440 /etc/sudoers.d/$USERNAME
USER $USERNAME
RUN apt-get update &&\
 apt-get install -y build-essential &&\
 apt-get install -y software-properties-common &&\
 apt-get install -y git &&\
 apt-get install -y libgl1 &&\
 rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/data-ixalab-t02/yolov8worflow.git .
RUN pip install -qr requirements.txt
ENTRYPOINT ["python", "workflow.py", "run", "--server.port=8501"]