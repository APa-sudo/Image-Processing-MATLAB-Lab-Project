% Main script to process image data
% Read data from the file,analyze image data,and display mean and median
imageData = ReadTextFile('AttestationImageFile.txt');
[mean, median, histogram, imageSize] = ImageAnalysis(imageData);
fprintf('The mean is %.3f and the median is %d\n', mean, median);

% Plot the histogram
figure(1);
bar(0:255, histogram,"BarWidth",1);
xlabel('Grey Tone');
ylabel('Frequency');
title('Histogram of Image Data');
xlim([0, 255]);
grid on;

% Invert the image
invertedImage = 255 - imageData;

% Create black-and-white image
BWImage = imageData;
BWImage(imageData <= median) = 0;
BWImage(imageData > median) = 255;

% Visualize the images
figure(2);

subplot(3, 1, 1);
imshow(imageData, [0 255]);
title('Original Image');
axis off;

subplot(3, 1, 2);
imshow(invertedImage, [0 255]);
title('Inverted Image');
axis off;

subplot(3, 1, 3);
imshow(BWImage, [0 255]);
title('Black and White Image');
axis off;

sgtitle('Image Analysis Results');