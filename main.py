import qrcode

img = qrcode.make("Testing docker multi-stage build.")
img.save("qrcode.png")
