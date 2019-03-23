#!/usr/bin/python

from PIL import Image
from pyzbar.pyzbar import decode

import sys

print(decode(Image.open(sys.argv[1]))[0].data)
