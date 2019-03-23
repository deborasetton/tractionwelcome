from PIL import Image
from pyzbar.pyzbar import decode
import qrcode


def decode_qr_code(image):
    return decode(Image.open(image))[0].data

def create_qr_code(text, filename):
    img = qrcode.make(text)
    img.save(filename+'.png', 'PNG')
