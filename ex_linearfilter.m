I=imread('..\images\noisy.png');
if (length(size(I))==3)
    I=rgb2gray(I);
end


subplot(2,4,1);imshow(I);title('original')
subplot(2,4,5);h=histogram(I);plot(h);

F=ones(5,5);
J=avgfilter(I,F);
subplot(2,4,2);imshow(J);title('average filtered')
subplot(2,4,6);h=histogram(J);plot(h);

G=[0 1 2 1 0;1 3 5 3 1;2 5 9 5 2;1 3 5 3 1;0 1 2 1 0];
K=gaussian(I,G);
subplot(2,4,3);imshow(K);title('gaussian filtered')
subplot(2,4,7);h=histogram(K);plot(h);

Lp=[0 0 -1 0 0;0 -1 -2 -1 0;-1 -2 16 -2 -1;0 -1 -2 -1 0;0 0 -1 0 0];
L=laplace(I,Lp);
subplot(2,4,4);imshow(L);title('laplace filtered')
subplot(2,4,8);h=histogram(L);plot(h);
