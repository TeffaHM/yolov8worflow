from ultralytics import YOLO

def entrenar():
# Load a model
    model = YOLO("yolov8n.yaml")  # build a new model from scratch

# Use the model
    results = model.train(data="datasets/data.yaml", epochs=1, batch=1, imgsz=640,cache='ram')  # train the model salida best.pt
    results = model.val("datasets/data.yaml")  # evaluate model performance on the validation set

