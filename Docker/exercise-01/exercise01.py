import sys

import numpy as np
from PIL import Image

array1 = np.array(list(map(lambda i: int(sys.argv[i]), range(1, len(sys.argv)))))
print("The original array: ", array1)
array2 = array1.reshape(3, 3)
print("The modified array: \n", array2)

try:
    image = Image.open("dog.jpg")
    rgb_image = np.array(image)
    grey_image = np.dot(rgb_image[..., :3], [0.2989, 0.5870, 0.1140])
    grey_image = Image.fromarray(grey_image)
    grey_image = grey_image.convert("L")
    grey_image.save("dog_in_grey.jpg")
    print("Converted RGB image to Greyscale image")
except Exception as error:
    print("Error:", error)
