%Name: Husni Abdelsalam 
I=imread('coins.png');
h1=imhist(I);%create the histogram for image
heq=histeq(I);%create the histogram equalization for image 
h2=imhist(heq);
v=I;
v=uint8((1/255.^2)*double(v).^3);%apply a power transformation with gamma=3
h3=imhist(v);%create teh histogram for image after apply the transformation
n=I;
R=imresize(n,[140 120]);%Resize the size of original image 
th=mean(n(:));%create the threshold value
b=n>th;%convert the original image to binary image based on the treshold value
figure(1),plot(h1);
figure(2),plot(h2);
figure(3),imshow(v);
figure(4),plot(h3);
figure(5),imshow(R);
figure(6),imshow(b);