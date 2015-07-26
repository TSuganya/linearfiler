function J = laplace(I,Lp)
if (length(size(I))==3)
    I=rgb2gray(I);
end

[r,c]=size(I);
J=ones(r,c);

K=floor(size(Lp,1)/2);
L=floor(size(Lp,2)/2);

for x=K+1:r-K-1
    for y=L+1:c-L-1
        m=[];
        for i=-K:K
            for j=-L:L
                a=I(x+i,y+j)*Lp(i+K+1,j+L+1);
                m=[m a];
            end
        end
        
        J(x,y)=mean(m);
    end
end
J=uint8(J);

