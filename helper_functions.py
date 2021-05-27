import sys
import numpy as np

#DATA_PATH = 'C:\\_University\\COM3025\\Coursework\\Speech-recognition-COM3025\\data\\prepped\\data'
DATA_PATH = 'data/processed/data'
PERMITTED_LABELS = ['yes','no','up','down','left','right','on','off','stop','go','silence','unknown']

def load_data(path=sys.modules[__name__].DATA_PATH):
    import pickle
    if path is None or len(path) == 0:
        raise
    data = {}
    with open(path, 'rb') as f:
        data = pickle.Unpickler(f).load()
    return data

def one_hot_to_label(one_hot):
    return PERMITTED_LABELS[np.argmax(one_hot)]

def label_to_one_hot(label):
    idx = PERMITTED_LABELS.index(label)
    return y[idx]

    