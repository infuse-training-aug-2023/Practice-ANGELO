import numpy as np
from PIL import Image

array1 = np.arange(9)
print("The original array: ", array1)
array2 = array1.reshape(3, 3)
print("The modified array: \n", array2)

image = Image.open("dog.jpg")
rgb_image = np.array(image)
grey_image = np.dot(rgb_image[..., :3], [0.2989, 0.5870, 0.1140])
grey_image = Image.fromarray(grey_image)
grey_image = grey_image.convert("L")
grey_image.save("dog_in_grey.jpg")
