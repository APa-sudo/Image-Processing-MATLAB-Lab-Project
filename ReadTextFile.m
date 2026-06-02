% Function to read image data from text file
function data = ReadTextFile(fileName)
    % Open the file
    file_id = fopen(fileName, 'r');
    
    % Read the image dimensions for the header line
    imageSize = fscanf(file_id, '%d', [1, 2]);
    numRows = imageSize(1);
    numCols = imageSize(2);
    
    % Initialize the data matrix
    data = zeros(numRows, numCols);
    
    % Read the matrix data
    for row = 1:numRows
        for col = 1:numCols
            data(row, col) = fscanf(file_id, '%d', 1);
        end
    end
    
    % Close the file
    fclose(file_id);
end