function J=avgfilter(I,F)
%F-filter of size (2K+1)*(2L+1)
if (length(size(I))==3)
    I=rgb2gray(I);
end

[r,c]=size(I);
J=ones(r,c);
K=floor(size(F,1)/2);
L=floor(size(F,2)/2);

for x=K+1:r-K-1
    for y=L+1:c-L-1
        m=[];
        for i=-K:K
            for j=-L:L
                a=I(x+i,y+j)*F(i+K+1,j+L+1);
                %sum=sum+P/((2*K+1)*(2*L+1));
                m=[m a];
            end
        end
       
        J(x,y)= mean(m);
    end
end

