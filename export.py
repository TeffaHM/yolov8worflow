from ultralytics import YOLO

def exportar():
    success = YOLO('runs/detect/train/weights/best.pt').export(format='onnx')  # export a model to ONNX format