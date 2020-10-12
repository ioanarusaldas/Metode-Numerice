function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
  B = double(rgb2gray(imread(image_path)));
  %se citeste imaginea de test
  v = reshape(B',[],1);
  v = v-m;
  %se calculeaza proiectia imaginii de test in spatiul fetelor
  pr_test =eigenfaces'*v;
  [line coloana] =size(pr_img);
  min_dist=inf;
  V=[];
  %se determina cea mai mica distanta intre proiectia imaginii de test si 
    %proiectiile imaginilor anterioare
  for i = 1:coloana
   dist = norm (pr_test - pr_img(:,i));
   V=[V dist];
  endfor
  [min_dist output_img_index]=min(V);
endfunction