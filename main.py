import qrcode

img = qrcode.make("Testing docker multi-stage build.")
img.save("output_file.png")