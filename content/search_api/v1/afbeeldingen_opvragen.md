---
---

# Methodes om afbeeldingen op te vragen

Binnen de lijsten zijn er thumbnails voorhanden dmv. het attribuut 'thumbnail'. 

http://media.uitdatabank.be/20100624/b6619218-2e50-4c1c-88e7-02b37871f4e1.jpg?maxwidth=162&maxheight=109

Door '?maxwidth=162&maxheight=109' te vervangen door andere waarden kunnen nieuwe formaten bekomen worden. Voor een volledig overzicht van de opties zie de lijst hieronder.

http://media.uitdatabank.be/20100624/b6619218-2e50-4c1c-88e7-02b37871f4e1.jpg?width=100&height=100&crop=auto

Binnen het detail is de afbeelding terug te vinden in het veld 'hlink'. Dezelfde opties kunnen toegevoegd worden in de querystring om de afbeelding aan te passen.

Opties

width, height – force the width and/or height to certain dimensions. Whitespace will be added if the aspect ratio is different.
maxwidth, maxheight – fit the image within the specified bounds. (Most often used)
crop=auto – Crop the image the the size specified by width and height. Centers and minimally crops to preserve aspect ratio.
crop=(x1,y1,x2,y2) – Crop the image to the specified rectangle on the source image. You can use negative coordinates to specifiy bottom-right relative locations.
rotate=degress – Rotate the image.
bgcolor=color name| hex code (6-char). Sets the background/whitespace color.
stretch=fill – Stretches the image to width and height if both are specified. This is the only way to lose aspect ratio.
scale=both|upscaleonly|downscaleonly|upscalecanvas – By default, images are never upscaled. Use &scale=both to grow an image.
flip=h|v|both – Flips the image after resizing.
sourceFlip=h|v|both – Flips the source image before resizing/rotation.
paddingWidth=px & paddingColor=color|hex. paddingColor defaults to bgcolor, which defaults to white.
borderWidth=px, borderColor=color|hex.
format=jpg|png|gif
colors=2-255 – Control the palette size of PNG and GIF images. If omitted, PNGs will be 24-bit.
frame=x – Choose which frame of an animated GIF to display.
page=x – Choose which page of a multi-page TIFF document to display.
