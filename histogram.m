%I=imread('.\images\lena.jpg');
function h = histogram(I)
if (length(size(I))==3)
    I=rgb2gray(I);
end
k=256;
[r,c]=size(I);
h=zeros(1,k);
 for i=1:r
     for j=1:c
         a=I(i,j);
         h(a+1)=h(a+1)+1;
     end
 end
%bar(h);
%plot(h);
