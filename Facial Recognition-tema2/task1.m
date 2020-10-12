function A_k = task1(image, k)
  %se citeste imaginea
  img=double(imread(image));
  %se aplica descompunerea valorilor singulare
  [U S V] =svd(img);
  %se calculaza A_k
  V1=V';
  A_k=U(:,1:k)*S(1:k,1:k)*V1(1:k,:);
endfunction