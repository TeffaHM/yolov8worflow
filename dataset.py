from roboflow import Roboflow

def importar():

    rf = Roboflow(api_key="KOrKgmkGRHqzxP6SuKTp") #se crea la conexion
    project = rf.workspace("prueba-catzq").project("prueba-33") # se busca el dataset del proyecto xx de espacio de trabajo ww
    dataset = project.version(2).download("yolov8",location='datasets') # se descarga a carpeta local

