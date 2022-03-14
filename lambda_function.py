import cv2
import numpy as np
import imutils
import argparse
import matplotlib
matplotlib.use('Agg')

def handler(event,context):
  print('OpenCV 버전 = ', cv2.__version__)
  print('numpy 버전 = ', np.__version__)
  print('imutils 버전 = ', imutils.__version__)
  print('argparse 버전 = ', argparse.__version__)
  print('matplotlib 버전 = ', matplotlib.__version__)
