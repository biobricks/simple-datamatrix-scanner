
A very simple bash script that continuously grabs a single frame from a webcam using `streamer` and then uses `dmtxread` to read a single DataMatrix 2D barcode from the image. If it finds the barcode it beeps and prints the barcode string followed by a newline.

# Required packages

```
sudo apt install streamer dmtx-utils v4l-utils beep
```

# Running

```
./scanner.sh
```