function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  points = [];
  vector = [];
  points=dlmread(file_points," ",5,1);
  for i = 1:10
    centroids = clustering_pc(points,i);
     v(i) = compute_cost_pc(points, centroids);
     %am salvat intr-un vector costul corespunzator fiecarui NC
  endfor
  i = 1:10;
  plot(i, v(i));
end

