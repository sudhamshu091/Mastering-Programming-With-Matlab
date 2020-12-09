%Automatically detecting edges in images is an important task in image processing. An edge detector takes an input image and generates another image where the edges in the 
%original image are highlighted by gray/white colors while other pixels are black. For each 3x3-pixel subset A, of an image, we can calculate the magnitude of the gradient at the 
%center pixel of A as a weighted sum of all the values in A.One common technique is called the Sobel operator specified as
%M = sqrt(Sx^2 + Sy^2)
%where Sx and Sy can be defined as,
%Sx = [[-1 0 1] [-2 0 2] [-1 0 1]:A and Sy = [[1 2 1] [0 0 0] [-1 -2 -1]:A
%Note that the colon in linear algebra means double dot product which is different from its use in MATLAB. So the formula above means that each pixelSx and Sy will be a 
%weighted sum of the values of the neighbouring pixels in the original image using the weights specified in the 3x3 matrices above. for example, Sx specifies that the current pixel
%and its top and bottom neighbors are not used (weights are zero), while the top right neighbor has a weight of 1 and the top left has weight -1, etc. The final output pixel is then
%the root sum squared Sx and Sy.
%Create a function edgy that takes an original image input, and produces a processed image. Both the input and the output arguments are grayscale images, that is , atrices 
%of uint8 values.
%Note that the output has two fewer rows and columns than the input since the pixels in the first and last columns and rows do not have enough neighbors for the required
%computation.
%Image example is there as CocaCola.png

%%%%%%%%%%%%%%%%%%%%

function output = edgy(input_image)
input_image = uint8(input_image);
input_image = double(input_image); 
filtered_image = zeros(size(input_image)); 
  
Mx = [-1 0 1; -2 0 2; -1 0 1]; 
My = [-1 -2 -1; 0 0 0; 1 2 1]; 

for i = 1:size(input_image, 1) - 2 
    for j = 1:size(input_image, 2) - 2 
        Gx = sum(sum(Mx.*input_image(i:i+2, j:j+2))); 
        Gy = sum(sum(My.*input_image(i:i+2, j:j+2))); 
        filtered_image(i+1, j+1) = sqrt(Gx.^2 + Gy.^2); 
         
    end
end
filtered_image = filtered_image(2:(end-1), 2:(end-1));    
output = uint8(filtered_image); 

end
