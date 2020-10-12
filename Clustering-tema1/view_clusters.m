% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
  [NC,C]=size(centroids);
  [l,c]=size(points);
  for i=1:l
    min=inf;
    for j=1:NC
      d=norm(centroids(j,:)-points(i,:));
      %min=d;
      if(d<min)
        min=d;
        v_centroids(i)=j;
      end
    endfor
  endfor
 scatter3(points(:, 1), points(:, 2), points(:, 3),[],v_centroids,'filled'); 
	% TODO graphical representation coded here 
end

