
<img src="https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/blob/master/Media/odysseeLogo.png" alt="Odyssee" width="250px" height="50px">

### An app-based scavenger hunt in Yosemite promoting connectedness with nature

<img src="https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/blob/master/Media/SplashScreen.png" alt="AppScreen" width="160px" height="350px">

## About

Odyssee is focused on a lack of engagement with the natural world affecting over 60% of Americans and urban populations around the globe. Using over 500,000 photos from over 8,000 species, our team fine tuned a nature specific neural net model, applied computer vision and edge technology to create a fascinating game and scavenger hunt experience through National Parks. 

Our initial release is for **Yosemite National Park**. 

## Features
- An immersive experience with dynamic trail maps and loc-based augmentation 
- Runs offline, so you can keep playing deep into the wild
- Curated list of hunt items based on historical importance and ancient uses
- Collectable ‘cards’ for discovered items  
- User score system based on difficulty and rarity of found items  
- Ability to join a ‘herd’, collaborate and compete with friends  
- Easter-egg achievements  

## How to Play
-  Download the APK file from [here](https://github.com/debalina-m/Build-Android-App/blob/master/Odyssee%20Capstone.mp4) to your android phone.  
- Install and launch the app.  

## Demo
- Here is a quick [demo](https://youtu.be/QI2l8aPq1x4) of Odyssee

## Training Data
- Data taken from the iNaturalist vision competition datasets in [2019](http://www.vision.caltech.edu/~gvanhorn/datasets/inaturalist/fgvc6_competition/) and [2018](http://www.vision.caltech.edu/~gvanhorn/datasets/inaturalist/fgvc5_competition/)  
- Webscraping for additional image data  
<img src="https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/blob/master/Media/data.png" alt="OdysseeData" width="910px" height="394px">  

- For more information about our Data Engineering methods, check the [Data](https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/tree/master/Data) sub folders for the [iNaturalist Dataset](https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/tree/master/Data/iNat) and [Webscraping](https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/tree/master/Data/webscrape).

## Implementation

- Built on highly efficient publicly available vision model- TFHub Inception v3  
- 16-bit weight quantization is used to reduce the initial model size (to 45 mb) and inference time. It matches full model by 99.9%  
- Data augmentation improves model performance wrt variation in zoom and rotation
- Class imbalance is handled through balanced batching and label smoothing  
- [App codebase](https://github.com/Final-Capstone-Nature-Scavenger-Hunt/odyssee-app)

## Coming Soon

- Field testing  
- Add more parks  
- Expansion of hunts (e.g. wildflower expansion released in spring)  
- Geolocating hot-spots for species (“keep your eyes peeled, there are a lot of black-tailed deer in this area”)
- Gray out items from list that are out of season  
- Selective data augmentation by image type (A pinecone may appear in any orientation but a deer or tree won’t appear upside down)

## Additional Info
For more details, check out our [slide deck](https://docs.google.com/presentation/d/148Vju2J3AVcon4K7LI9AqTBW5iIzz3BeHbLvSsjoddU/edit#slide=id.p)

## Contact Us
Feedback is always welcome: **appodyssee@gmail.com**
