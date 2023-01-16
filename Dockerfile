FROM python:3.11
EXPOSE 8501 
WORKDIR /app 
RUN apt-get update &&\
 apt-get install -y build-essential &&\
 apt-get install -y software-properties-common &&\
 apt-get install -y git &&\
 apt-get install -y libgl1 &&\
 rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/data-ixalab-t02/yolov8worflow.git .
RUN pip install -qr requirements.txt
ENTRYPOINT ["python", "workflow.py", "run", "--server.port=8501"]