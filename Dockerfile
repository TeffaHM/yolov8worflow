FROM python:3.10 # define la imagen base.
EXPOSE 8501 # define asignación de puerto para contenedores en ejecución.
WORKDIR /app # establece un directorio para las directivas que se ejecutarán
# se ejecuta cuando se está construyendo una imagen personalizada para realizar una acción, creando una capa nueva.
RUN apt-get update && apt-get install -y \ build-essential \ software-properties-common \ git \ && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/data-ixalab-t02/yolov8worflow.git
RUN pip3 install -r requirements.txt
ENTRYPOINT ["metaflow", "run", "worflow.py", "--server.port=8501"]