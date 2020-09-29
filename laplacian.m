%I = imread('bilder/IMG_4606.JPG');
%I = rgb2gray(I);
%I = im2double(I);

images = load_images();

I=images(:,:,1);

%w = [1 4 6 4 1; 4 16 24 16 4; 6 24 36 24 6; 4 16 24 16 4; 1 4 6 4 1 ]/256;
a = ML(I);
b = SML(a);
%plot(b)

%figure
%imshow(a, [])
%%imshow(Is)

gauss = gaussian_pyramid(I, 5);

%a = UpSize(I);
%figure
%imshow(I, [])

%figure
%imshow(a, [])

%figure
%imshow(gauss{1}, [])
%figure
%imshow(gauss{2}, [])
%figure
%imshow(gauss{3}, [])
%figure
%imshow(gauss{4}, [])
%figure
%imshow(gauss{5}, [])

laplacian1 = laplacian_pyramid(gauss);

figure
imshow(laplacian1{5}, [])
figure
imshow(laplacian1{2}, [])