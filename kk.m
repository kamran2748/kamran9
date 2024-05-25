inputImage = imread('1.jpg');
[height, width, ~] = size(inputImage);


RA = input('ENTER DEGREE: ');


centerX = width / 2;
centerY = height / 2;


rotatedImage = uint8(zeros(height, width, 3));


for y = 1:height
    for x = 1:width
        rotatedX = round((x - centerX) * cos(RA) - (y - centerY) * sin(RA) + centerX);
        rotatedY = round((x - centerX) * sin(RA) + (y - centerY) * cos(RA) + centerY);
        
        
        if rotatedX >= 1 && rotatedX <= width && rotatedY >= 1 && rotatedY <= height
           
            rotatedImage(y, x, :) = inputImage(rotatedY, rotatedX, :);
        end
    end
end
imshow(rotatedImage);