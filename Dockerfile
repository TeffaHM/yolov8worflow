FROM python:3.9-slim
EXPOSE 8501 
WORKDIR /app 
RUN apt-get update && apt-get install -y \
 build-essential \ software-properties-common \ 
 git \
 && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/data-ixalab-t02/yolov8worflow.git .
RUN pip3 install -r requirements.txt
ENTRYPOINT ["metaflow", "run", "workflow.py", "--server.port=8501"]