# Image-Processing-MATLAB-Lab-Project

## Overview
This project implements a basic image processing pipeline in MATLAB as part of an academic laboratory assignment. The program reads grayscale image data from a text file, performs statistical analysis, and applies simple image transformations such as inversion and threshold-based segmentation.

The goal of the project is to demonstrate fundamental concepts in digital image processing, including histogram analysis, intensity transformations, and basic image visualization.

---

## Features
- Read grayscale image data from a text file
- Compute statistical properties:
  - Mean intensity
  - Median intensity
- Generate histogram of pixel intensity distribution
- Image transformations:
  - Image inversion
  - Binary (black & white) thresholding using median
- Visualization of original and processed images

---

## Technologies Used
- MATLAB
- Basic Image Processing Toolbox functions
- Data visualization (plots, histograms, image display)

---

## Processing Pipeline
1. Load image data from `AttestationImageFile.txt`
2. Compute:
   - Mean intensity
   - Median intensity
3. Generate histogram (0–255 grayscale range)
4. Apply transformations:
   - Inverted image: `255 - imageData`
   - Binary image using median threshold
5. Display results using subplots

---

## Outputs
The program generates:
- Histogram of grayscale values
- Original image
- Inverted image
- Binary (thresholded) image

---

## Learning Outcomes
- Understanding grayscale image representation
- Histogram-based analysis of image data
- Thresholding techniques for segmentation
- Basic image transformations in MATLAB
- Data visualization using plots and subplots

---

#Author

Akshat Pathak

Robotics Engineering Student

Technishce Hochschule Würzburg-Schweinfurt (THWS)
