---
---

# Afbeeldingen schalen

Volgende parameters kunnen aan de user depiction URL meegegeven worden om een bewerkte versie op te vragen:

* width, height – force the width and/or height to certain dimensions. Whitespace will be added if the aspect ratio is different.
* maxwidth, maxheight – fit the image within the specified bounds. (Most often used)
* crop=auto – Crop the image the the size specified by width and height. Centers and minimally crops to preserve aspect ratio.
* crop=(x1,y1,x2,y2) – Crop the image to the specified rectangle on the source image.
* bgcolor=color name| hex code (6-char). Sets the background/whitespace color.
* scale=both|downscaleonly – By default, images are never upscaled. Use &scale=both to grow an image.
* rotate=-90 | 90 | 180
