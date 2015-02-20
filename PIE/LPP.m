function U=LPP(X,c)

if nargin < 2
    c=5;
end
[class,classmean]=kmeans(X,c);
Sb=cov(classmean)*c;
St=cov(X);
Sw=St-Sb;
%Sw=zeros(size(Sb));
%for i=1:c    
%    Sw0=cov(X(find(class==c),:));
 %   Sw=Sw+Sw0;
%end
[U,~]=eig(Sb./Sw);
end
