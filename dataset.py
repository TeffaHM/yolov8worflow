from roboflow import Roboflow

def importar():

    rf = Roboflow(api_key="KOrKgmkGRHqzxP6SuKTp") #se crea la conexion
    project = rf.workspace("asdasd-boz3q").project("glass-xrghl") # se busca el dataset del proyecto xx de espacio de trabajo ww
    dataset = project.version(3).download("yolov8") # se descarga a carpeta local
