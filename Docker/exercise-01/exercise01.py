import os
import sys

import numpy as np
from PIL import Image

# array1 = np.array(list(map(lambda i: int(sys.argv[i]), range(1, len(sys.argv)))))
array1 = np.array(range(1, 10))
print("The original array: ", array1)

if len(sys.argv) == 4:
    array2 = array1.reshape(int(sys.argv[2]), int(sys.argv[3]))
else:
    array2 = array1.reshape(3, 3)
print("The modified array: \n", array2)

if os.environ.get("EXEC"):
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
