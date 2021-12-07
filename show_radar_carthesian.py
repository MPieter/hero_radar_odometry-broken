import numpy as np
import cv2

radar = np.load("radar_test_file.npy")
radar = np.squeeze(radar)

radar = cv2.normalize(radar, None, 0, 255, cv2.NORM_MINMAX, cv2.CV_8UC1)
radar = cv2.applyColorMap(radar, cv2.COLORMAP_VIRIDIS)
cv2.imshow('Test radar image', radar)
cv2.waitKey()
