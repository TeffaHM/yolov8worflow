from ultralytics import YOLO

def entrenar():
# Load a model
    model = YOLO("yolov8n.yaml")  # build a new model from scratch

# Use the model
    results = model.train(data="Glass-3/data.yaml", epochs=1, batch=1, imgsz=640,cache='ram')  # train the model salida best.pt
    results = model.val("Glass-3/data.yaml")  # evaluate model performance on the validation set

