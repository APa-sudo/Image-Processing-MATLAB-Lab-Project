% Function to analyze image data
function [mean, median, histogram, imageSize] = ImageAnalysis(data)
    % Determine image size
    [rows, columns] = size(data);
    imageSize = [rows, columns];

    % Calculate the mean using nested loops
    total_sum = 0;
    for i = 1:rows
        for j = 1:columns
            total_sum = total_sum + data(i, j);
        end
    end
    mean = total_sum / (rows * columns);

    % Calculate the histogram
    histogram = zeros(1, 256);
    for i = 1:rows
        for j = 1:columns
            greyTone = data(i, j);
            histogram(greyTone + 1) = histogram(greyTone + 1) + 1;
        end
    end

    % Calculate the median using a while loop
    sorted_data = sort(data(:)); % Flatten and sort the data
    num_elements = numel(sorted_data); % Total number of elements
    count = 0;
    index = 0;

    while count < num_elements / 2
        index = index + 1;
        count = count + 1;
    end

    % Handle odd and even cases
    if mod(num_elements, 2) == 1
        median = sorted_data(index);
    else
        median = (sorted_data(index) + sorted_data(index + 1)) / 2;
    end
end

