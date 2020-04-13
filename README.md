
<img src="https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/blob/master/Media/odysseeLogo.png" alt="Odyssee" width="250px" height="50px">

```diff
+ Gamifying exploration of the natural world; an app-based experience for nature scavenger hunt.
```
<img src="https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/blob/master/Media/SplashScreen.png" alt="AppScreen" width="160px" height="350px">

## Proposal

Are you a nature enthusiast? Hiking on the trails, smelling the trees, listening to the chirp of the birds are the perfect way of your relaxation? Do you like exploring outdoors, but sometimes little hesitant to travel to a new place on your own?
```diff
+ Then Odyssey is for you.
+ It’s an app-based experience for nature scavenger hunt, where you can identify local species all while off the grid.
+ The app comes with your choice of difficulty level and option to play alone or in group.
```  
![](https://placehold.it/8/32CD32/000000?text=+)     The initial phase is being launched for **Yosemite National Park**.

## Problem Statement

![](https://placehold.it/8/32CD32/000000?text=+)  Interaction with nature delivers measurable benefits to physical health, mental health, cognitive ability and social cohesion. It is also associated with conservation behavior such as recycling.  
US National Parks are visited more than 300M times per year, but many non-visitors cite too little info about what to do inside and a preference for electronic activities as reasons for not visiting more.  
In addition, only 40% of Americans consider enjoying nature an important aspect of a vacation.  
So the objective of this Odyssee app is help making the experience of visiting a national park more fun, exciting, challenging and memorable. 

## Target Users

While this app should be suitable for nearly anyone visiting a park with a smartphone, here are few specific target users:  
<img src="https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/blob/master/Media/targetUsers.png" alt="OdysseeUsers" width="850px" height="220px">  

![](https://placehold.it/8/32CD32/000000?text=+)  Friends' Reunion  
![](https://placehold.it/8/32CD32/000000?text=+)  Educational Excursion  
![](https://placehold.it/8/32CD32/000000?text=+)  Families Reconnecting  
![](https://placehold.it/8/32CD32/000000?text=+)  First time visitors Needing Instruction  
![](https://placehold.it/8/32CD32/000000?text=+)  Gamers Needing a nudge  


## Features Odysse Offers  
![](https://placehold.it/8/32CD32/000000?text=+)  An immersive experience with dynamic trail maps and loc-based augmentation  
![](https://placehold.it/8/32CD32/000000?text=+)  Curated list of hunt items [based on historical importance, medical or ancient uses]  
![](https://placehold.it/8/32CD32/000000?text=+)  Collectable ‘cards’ for discovered items  
![](https://placehold.it/8/32CD32/000000?text=+)  User score system based on difficulty and rarity of found items  
![](https://placehold.it/8/32CD32/000000?text=+)  Ability to join a ‘herd’, collaborate and compete with friends  
![](https://placehold.it/8/32CD32/000000?text=+)  Easter-egg achievements  

## How to Use  
![](https://placehold.it/8/32CD32/000000?text=+)  Download the APK fie from [here](https://github.com/debalina-m/Build-Android-App/blob/master/Odyssee%20Capstone.mp4) to your android phone.  
![](https://placehold.it/8/32CD32/000000?text=+)  Install and launch the app.  
![](https://placehold.it/8/32CD32/000000?text=+)  If you face any issue please do not hesitate to contact us @ **appodyssee@gmail.com**

## Demo
![](https://placehold.it/8/32CD32/000000?text=+)  Here is a quick [demo](https://github.com/debalina-m/Build-Android-App/blob/master/Odyssee%20Capstone.mp4) of Odyssee

## Data

![](https://placehold.it/8/32CD32/000000?text=+) Data taken from the more recent iNaturalist sets [2019](http://www.vision.caltech.edu/~gvanhorn/datasets/inaturalist/fgvc6_competition/) and [2018](http://www.vision.caltech.edu/~gvanhorn/datasets/inaturalist/fgvc5_competition/)  
![](https://placehold.it/8/32CD32/000000?text=+) Webscraping for additional image data  
<img src="https://github.com/Final-Capstone-Nature-Scavenger-Hunt/Nature-Scavenger-Hunt/blob/master/Media/data.png" alt="OdysseeData" width="700px" height="350px">

## Implementation Approach
![](https://placehold.it/8/32CD32/000000?text=+) Built on highly efficient publicly available vision model- TFHub Inception v3  
![](https://placehold.it/8/32CD32/000000?text=+) 16-bit weight quantization is used to reduce the initial model size (to 45 mb) and inference time. It matches full model by 99.9%  
![](https://placehold.it/8/32CD32/000000?text=+) Data Augmentation used to take care of the cropped/ zoom/ rotated images.  
![](https://placehold.it/8/32CD32/000000?text=+) Class imbalance is handled through balanced batching and label smoothing.  
**Entire code is available** [here](https://github.com/Final-Capstone-Nature-Scavenger-Hunt/odyssee-app)

## Future Roadmap  
![](https://placehold.it/8/32CD32/000000?text=+) Field Testing  
![](https://placehold.it/8/32CD32/000000?text=+) Add more parks  
![](https://placehold.it/8/32CD32/000000?text=+) Expansion of hunts (e.g. wildflower expansion released in spring)  
![](https://placehold.it/8/32CD32/000000?text=+) Geolocating hot-spots for species [“keep your eyes peeled, there are a lot of black-tailed deer in this area”]  
![](https://placehold.it/8/32CD32/000000?text=+) Gray out items from list that are out of season  
![](https://placehold.it/8/32CD32/000000?text=+) Selective data augmentation by image type. [e.g. A pinecone may appear in any orientation but a deer or tree won’t appear upside down]

