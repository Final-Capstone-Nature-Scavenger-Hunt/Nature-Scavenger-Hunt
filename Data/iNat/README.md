# iNat Data 
## EDA and Download Preprocessing

- iNat_dataparser.ipynb: short EDA, image counts for the species of interest, 
and creates file transfer links for gsutil (copying to GCP Bucket gs://muirsquest)

### iNaturalist Competition Data Links: 
- 2019: http://www.vision.caltech.edu/~gvanhorn/datasets/inaturalist/fgvc6_competition/
- 2018: http://www.vision.caltech.edu/~gvanhorn/datasets/inaturalist/fgvc5_competition/

### Image to Species Translation
- train[year].json: image ID data
- categories.json: ID to species info
