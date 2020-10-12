% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
  centroids=points(1:NC,:);
  %am ales primii centroizi
  [l c]=size(points);
  %am calculat dimensiunea matricei de puncte
  lastcentroids=zeros(NC,3);
  ok=1;
  while(ok==1)
    lastcentroids=centroids;
    %am salvat ultii centroizi
  for i=1:l
    %am parcurs matricea 
    min=inf;
    for j=1:NC
      %am parcurs centroizii si am 
      %calculat distanta fiecarui punct fata de fiecare centroid
      d=norm(centroids(j,:)-points(i,:));
      if(d<min)
        min=d;
        v_centroids(i)=j;
        %am salvat pentru fiecare punct indicele
        %fiecarui centroid de care este mai apropiat
      end
    endfor
  endfor
  for j=1:NC
    sumx=0;
    sumy=0;
    sumz=0;
    nr=0;
    for i=1:l
      if v_centroids(i)==j
        %am calculat centrul de greutate
        nr=nr+1;
        sumx=sumx+points(i,1);
        sumy=sumy+points(i,2);
        sumz=sumz+points(i,3);
      endif
    endfor
    %am pus centrele de greutate ca fiind noii centroizi
    centroids(j,1)=sumx/nr;
    centroids(j,2)=sumy/nr;
    centroids(j,3)=sumz/nr;
endfor
if(centroids==lastcentroids)
ok=0;
end
endwhile
	% TODO K-Means code 
end
