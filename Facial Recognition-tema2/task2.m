function task2()
  %se alege calea catre imaginea ce trebuie analizata
  image='./in/images/image3.gif';
  %se citeste imaginea
  A=double(imread(image));
  %se aplica descompunerea valorilor singulare
  [U S V] =svd(A);
  V1=V';
  [m,n]=size(A);
  %se initializeaza vectorii
  a=[];
  b=[];
  v2=[];
  %imagine 1
  %vetorul v retine valorile de pe diagonala principala a lui S
  v=diag(S);
  figure(1);
  plot (v);
  %se realizeaza primul grafic
  %imagine 2
  k=[1:min(m,n)];
  %este ales k
  for i=1:length(k)
    a=[];
    for j=1:i
     a=[a,S(j,j)];
     %vectorul a retine valorile de pe diagonala principala a lui S
    endfor
    b=[b,sum(a)];
    %vectorul b terine sumele pentru fiecare vector a corespunzator unui k
  endfor
  for i=1:length(b)
    v2=[v2,b(i)/sum(diag(S))];
  endfor
  figure(2);
  plot(v2);
  %se realizeaza al doilea grafic
  %imagine 3
  v3=[];
 for l=1:length(k)
   A_k=U(:,1:l)*S(1:l,1:l)*V1(1:l,:);
   %se calculeaza A_k pentru fiecare k
   sum=0;
    for i=1:m
      for j=1:n
        x=(A(i,j)-A_k(i,j))^2;
        sum=sum+x; 
      endfor
    endfor
    v3=[v3,sum/(m*n)];
 %vectorul v3 retine valorile ce urmeaza sa fie reprezentate grafic
  endfor
  figure(3);
  %se realizeaza graficul 3
  plot(v3);
  %imagine 4
  v4=[];
  for l=1:length(k)
    y=(m*l+n*l+l)/(m*n);
    %se calculeaza rata de compresie a datelor dupa formula data
    v4=[v4,y];
  endfor
  figure(4);
  plot(v4);
endfunction