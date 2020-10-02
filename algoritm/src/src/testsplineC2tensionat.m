	x = 0:pi/3:7*pi;
	y = sin(x)+cos(3*x);
  dy= TODO;
	xi = 0:pi/15:7*pi;

	for i = 1 : length(xi)
		yi(i) = feval('splineC2_tensionat', xi(i), x, y, dy(1), dy(length(x)));
	endfor
	
	plot(x, y, 'g-o', xi, yi, 'r-*');
	legend ('data', 'spline C2 tensionat');
	axis([0 23 -2 2.7]);