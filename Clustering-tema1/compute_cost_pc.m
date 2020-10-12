% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
  [l c]=size(points);
 [NC,C]=size(centroids);
 %am calculat dimensiunea matricelor
	cost = 0; 
  for i=1:l
    min=inf;
    for j=1:NC
      d=norm(centroids(j,:)-points(i,:));
      if(d<min)
        min=d;
        v_centroids(i)=j;
      end
    endfor
  endfor
  for j=1:NC
    %am parcurs centroizii
    sum=0;
    for i=1:l
      if v_centroids(i)==j
        sum=sum+norm(centroids(j,:)-points(i,:));
        %pentru fiecare centroid am calculat
          %suma distantelor punctelor din multimea acelui centroid
      endif
    endfor
    cost=cost+sum;
    %am adunat toate costurile
endfor
	% TODO compute clustering solution cost
end

