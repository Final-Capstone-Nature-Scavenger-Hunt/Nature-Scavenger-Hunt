iNaturalist Data Source - https://github.com/visipedia/inat_comp
Data stored in gcp bucket - https://console.cloud.google.com/storage/browser/muirsquest?project=capstone-scavengerhunt

##Webscraping##  

**Download Image url-s**  

  The first step in using Google Images to gather training data for our Convolutional Neural Network is to head to Google Images and enter a query.
  Say "Bridalveil Falls + Yosemite"  

  The next step is to use a tiny bit of JavaScript to gather the image URLs (which we can then download using Python).

  Fire up the JavaScript console by clicking View => Developer => JavaScript Console :

From there, click the Console  tab:
This will enable you to execute JavaScript in a REPL-like manner. The next step is to start scrolling!

Keep scrolling until you have found all relevant images to your query. From there, we need to grab the URLs for each of these images. Switch back to the JavaScript console and then copy and paste this JavaScript snippet into the Console

```
// pull down jquery into the JavaScript console
var script = document.createElement('script');
script.src = "https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js";
document.getElementsByTagName('head')[0].appendChild(script);
```

The snippet above pulls down the jQuery JavaScript library, a common package used for nearly every JavaScript application.

Now that jQuery is pulled down we can use a CSS selector to grab a list of URLs:

```
// grab the URLs
var urls = $('.rg_di .rg_meta').map(function() { return JSON.parse($(this).text()).ou; });
```  

And then finally write the URLs to file (one per line):  

```
// write the URls to file (one per line)
var textToSave = urls.toArray().join('n');
var hiddenElement = document.createElement('a');
hiddenElement.href = 'data:attachment/text,' + encodeURI(textToSave);
hiddenElement.target = '_blank';
hiddenElement.download = 'urls.txt';
hiddenElement.click();
```  

After executing the above snippet you’ll have a file named urls.txt  in default Downloads directory.  

**Downloading Google Images using Python**  

Now that we have our urls.txt file, we need to download each of the individual images.

Install requests(http://docs.python-requests.org/en/master/) on the machine.
 (taking care to use the workon  command first if using Python virtual environments):  

 ```
workon cv
pip install requests
```

Open up a new file, name it download_images.py , and insert the following code:  

```
# import the necessary packages
from imutils import paths
import argparse
import requests
import cv2
import os
```

Here we are just importing required packages. Notice requests  on Line 4 — this will be the package we use for downloading the image content.

Next, we’ll parse command line arguments and load our urls  from disk into memory:

```
# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-u", "--urls", required=True,
	help="path to file containing image URLs")
ap.add_argument("-o", "--output", required=True,
	help="path to output directory of images")
args = vars(ap.parse_args())
# grab the list of URLs from the input file, then initialize the
# total number of images downloaded thus far
rows = open(args["urls"]).read().strip().split("n")
total = 0
```

Command line argument parsing is handled on Lines 9-14 — we only require two:

--urls : The path to the file containing image URLs generated by the Javascript trick above.
--output : The path to the output directory where we’ll store our images downloaded from Google Images.
From there, we load each URL from the file into a list on Line 18. We also initialize a counter, total , to count the files we’ve downloaded.

Next we’ll loop over the URLs and attempt to download each image:

```
# loop the URLs
for url in rows:
	try:
		# try to download the image
		r = requests.get(url, timeout=60)
		# save the image to disk
		p = os.path.sep.join([args["output"], "{}.jpg".format(
			str(total).zfill(8))])
		f = open(p, "wb")
		f.write(r.content)
		f.close()
		# update the counter
		print("[INFO] downloaded: {}".format(p))
		total += 1
	# handle if any exceptions are thrown during the download process
	except:
		print("[INFO] error downloading {}...skipping".format(p))
```

Using requests , we just need to specify the url  and a timeout for the download. We attempt to download the image file into a variable, r , which holds the binary file (along with HTTP headers, etc.) in memory temporarily (Line 25).

Let’s go ahead and save the image to disk.

The first thing we’ll need is a valid path and filename. Lines 28 and 29 generate a path + filename, p , which will count up incrementally from 00000000.jpg .

We then create a file pointer, f , specifying our path, p , and indicating that we want write mode in binary format ("wb" ) on Line 30.

Subsequently, we write our files contents (r.content ) and then close the file (Lines 31 and 32).

And finally, we update our total count of downloaded images.

If any errors are encountered along the way (and there will be some errors — you should expect them whenever trying to automatically download unconstrained images/pages on the web), the exception is handled and a message is printed to the terminal (Lines 39 and 40).


**Delete the images which can't be opened through opencv**

We’ll loop through all files we’ve just downloaded and try to open them with OpenCV. If the file can’t be opened with OpenCV, we delete it and move on. This is covered in our last code block:  

```
# loop over the image paths we just downloaded
for imagePath in paths.list_images(args["output"]):
	# initialize if the image should be deleted or not
	delete = False
	# try to load the image
	try:
		image = cv2.imread(imagePath)
		# if the image is `None` then we could not properly load it
		# from disk, so delete it
		if image is None:
			delete = True
	# if OpenCV cannot load the image then the image is likely
	# corrupt so we should delete it
	except:
		print("Except")
		delete = True
	# check to see if the image should be deleted
	if delete:
		print("[INFO] deleting {}".format(imagePath))
		os.remove(imagePath)

```

As we loop over each file, we’ll initialize a delete  flag to False (Line 45).

Then we’ll try  to load the image file on Line 49.

If the image  is loaded as None , or if there’s an exception, we’ll set delete = True  (Lines 53 and 54 and Lines 58-60).

Common reasons for an image being unable to load include an error during the download (such as a file not downloading completely), a corrupt image, or an image file format that OpenCV cannot read.

Lastly if the delete  flag was set, we call os.remove  to delete the image on Lines 63-65.