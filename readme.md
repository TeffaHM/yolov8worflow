Dasboard yolov7 con deepsort

		# entorno virtual o capsula
		mkdir 'carpeta' #se crea carpeta que alojará el entorno virtual
		virtualenv 'nombre' # crea el entorno virtual
		source 'nombre'/bin/activate # activa el etorno virtual 

		(yolov5_env) 'usuario pc' 'carpeta' % 
		%pip install -r requirements.txt # para instalar las librerias que correspondan

clonar el repo 


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
- Ajustar hiperparámetros: augmentation del dataset, 

