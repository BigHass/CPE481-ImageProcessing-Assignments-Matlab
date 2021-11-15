%Name: Husni Abdelsalam 
A=imread('image1.png');
B=imread('coins.png');
f1=(1/25)*ones(5);%create the average filter with size 5x5
t1=filter2(f1,A);%apply the average filter on image1 for blurring 
figure(1),imshow(t1/255);%to show the result
L1=[-1 -1 -1 ;-1 8 -1;-1 -1 -1];%laplacian filter  with size 3x3
t2=filter2(L1,A);%apply the laplacian filter on image1 for create the response 
figure(2),imshow(t2/255);%to show the result
L2=[-1 -1 -1 ;-1 9 -1;-1 -1 -1];%laplacian filter  with size 3x3
t3=filter2(L2,A);%apply the laplacian filter on image1 for sharpening
figure(3),imshow(t3/255);%to show the result
n=B;
sb=size(B);
sn=size(n);
temp1=B(:,1:sb(2)/2);%select the left side of image
temp2=B(:,(sb(2)/2)+1:sb(2));%select the right side of image
v=filter2(f1,temp1);%apply the average filter on the left side of image for blurring 
q=filter2(L2,temp2);%apply the laplacian filter on the right side of image for sharpening
n(:,1:sn(2)/2)=v;
n(:,(sn(2)/2)+1:sn(2))=q;
figure(4),imshow(n);%to show the result