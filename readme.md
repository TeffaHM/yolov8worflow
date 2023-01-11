# Posible meta:

## _Construir un worflow local (sin deploy aún) para el entrenamiento del modelo_

1. ETL dataset

- Extracción:
	- Revisar nuevamente el dataset usado hasta el momento. Elegir para cada categoria imagenes que representen mejor la basura que podemos reconocer en la cinta transportadora y realizar los boxes.
	- Aumentar el dataset con nuevas imágenes categorizadas con label box.
- Transformación:
	- Dividir en train, val y test. Definir porcentajes. Ej. 0.8;0.1;0.1
	- limpiar dataset. Ej. por formato de imagen, por tamaño, etc...
- Carga:
	- Preparar el módulo de ETL para ingestar al modelo



2. Entenamiento Modelo:
- Ajustar parámetros generales: batch, epochs tamaño de imagen t tipo de modelo (s, ls, ....,x)
- Ajustar hiperparámetros: augmentation del dataset

# Cumplimiento de la meta
## worflow con metaflow para importar, entrenar y exportar modelo

se crearon 3 modulos:
- _dataset.py_: para importar el dataset desde roboflow utilizando la libreria propia de roboflow y sus metodos.
- _train_: contiene la función para entrenar el modelo con el dataset importado 
- _export_: una vez creado en _.pt_ desde el entranamiento y validación se utiliza para crear el _.onnx_ para exportar el modelo.
- _train_yolov8_workflow.py_  contiene la libreria de metaflow con sus respectivos decorators para relaizar las tareas segun el orden start(importa dataset)->train (entrena el modelo)-> end (exporta el modelo)

- para realizar el entrenamiento se tiene que crear el entorno virtual e instalar: 

	% pip install roboflow
	% pip intall ltralytics
	% pip install metaflow

- luego en terminal:

	% python train_yolov8_workflow.py show # para ver los pasos del worflow
	% python train_yolov8_workflow.py run # para correr el worflow


## Creación Entorno Virtual

		# entorno virtual o capsula
		mkdir 'carpeta' #se crea carpeta que alojará el entorno virtual
		virtualenv 'nombre' # crea el entorno virtual
		source 'nombre'/bin/activate # activa el etorno virtual 

		(yolov5_env) 'usuario pc' 'carpeta' % 
		%pip install -r requirements.txt # para instalar las librerias que correspondan

