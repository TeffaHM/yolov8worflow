FROM python:3.10-slim
EXPOSE 8501 
RUN apt-get -y update
RUN groupadd -r user && useradd -r -g user user
USER foo
RUN apt-get update &&\
 apt-get install -y build-essential &&\
 apt-get install -y software-properties-common &&\
 apt-get install -y git &&\
 apt-get install -y libgl1 &&\
 rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/data-ixalab-t02/yolov8worflow.git .
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python", "workflow.py", "run", "--server.port=8501"]