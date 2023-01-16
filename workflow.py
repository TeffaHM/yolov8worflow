from metaflow import FlowSpec, step
from dataset import importar
from train import entrenar
from export import exportar


class trainflow(FlowSpec):
    """
    Este es un worflow donde se im porta el dataset, se entrena el modelo y se exporta a onnx

    """

    @step
    def start(self):
        """
        Este es el primer paso donde se importa y crea el dataset a ser 
        utilizado para el entrenamiento

        """
        importar() # llamo a la función importar del modulo dataset
        print("se esta importando el dataset de roboflow.")
        self.next(self.entrenar)

    @step
    def entrenar(self):
        """
        En este paso se entrena el modelo con el dataset importado

        """
        entrenar() # llamo a la función de entrenamiento del modulo train

        print("se entrenó el modelo")

        self.next(self.end)

    @step
    def end(self):
        """
        Este es el paso final donde se exporta el modelo

        """
        exportar() # llamo a la función exportar del modulo export
        print("se realizó la exportación del modelo a onnx.")


if __name__ == "__main__":
    trainflow()