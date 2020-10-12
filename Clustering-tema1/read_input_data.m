% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)  
	% set these values correctly
  in=fopen(file_params);
	NC =fscanf(in,"%i",1);
	load(file_points);
	% TODO read NC
	% TODO read points
end

