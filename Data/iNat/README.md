# iNat and Game Table Processing

## Preprocessing and EDA
- `iNatDataJoin.ipynb`: Joins multiple years of iNat data by Species
- `duplicateDataCheck.ipynb`: Hashes image data and checks for duplicate images within joined datasets
- `iNat_dataparser.ipynb`: short EDA, image counts for the species of interest, 
and creates file transfer links for gsutil (copying to GCP Bucket gs://muirsquest)

## Game Table Generation
- `GameTableGen.ipynb`: Generate game tables from various datasets, convert to json and upload to firebase

### Data Links: 
- `2019 iNat Comp`: http://www.vision.caltech.edu/~gvanhorn/datasets/inaturalist/fgvc6_competition/
- `2018 iNat Comp`: http://www.vision.caltech.edu/~gvanhorn/datasets/inaturalist/fgvc5_competition/
- `Yosemite Species and Rarity`: NPSpecies_FullList_YOSE_20200229_21258.csv


### Image to Species Translation
- `train[year].json`: image ID data
- `categories.json`: ID to species info
