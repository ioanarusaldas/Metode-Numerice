function [m, A, eigenfaces pr_img] = eigenface_core(database_path)
  T=[];
  for k = 1 : 10
    image = strcat(database_path, '/', int2str(k), '.jpg');
    B = double(rgb2gray(imread(image)));
    %se citeste fiecare imagine
    v = reshape(B',[],1);
    %matricea se transforma intr-un vector coloana si se salveaza in matricea T
    T = [T v];
  endfor
  aux=mean(T');
  %cu mean se calculeaza media pentru fiecare linie
  m=aux';
  A = T - m;
  [V S] = eig( A' * A);
  [n n]= size(S);
  V1 = [];
  for i = 1:n
    %se verifica valorile proprii > 1
    if S(i,i) > 1
      V1 = [V1 V(:, i)];
      %se salveaza doar vectorii care indeplinesc conditia de mai sus
    endif
  endfor
  %se calculeaza matricea cu fetele proprii
  eigenfaces = A*V1;
  %se calculeaza proiectia fiecare imagini din multimea de imagini M in
    %spatiul fetelor
  pr_img=eigenfaces'*A;
endfunction