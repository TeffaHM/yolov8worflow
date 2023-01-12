from roboflow import Roboflow

def importar():

    rf = Roboflow(api_key="KOrKgmkGRHqzxP6SuKTp") #se crea la conexion
    project = rf.workspace("prueba2-8v055").project("waste-jrhiu") # se busca el dataset del proyecto xx de espacio de trabajo ww
    dataset = project.version(2).download("yolov8",location='datasets') # se descarga a carpeta local

