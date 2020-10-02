	%x = 0:pi/3:7*pi;
	%y = sin(x)+cos(3*x);
  %dy= cos(x)-(3*sin(3*x));
	%xi = 0:pi/15:7*pi;
  x1=[1 2 5 6 7 8 10 13 17];
  y1=[3.0 3.7 3.9 4.2 5.7 6.6 7.1 6.7 4.5];
  dy1=[1.0 -0.67];
  xi1=linspace(1,17,100);
  x2 = [17 20 23 24 25 27 27.7];
  y2 = [4.5 7.0 6.1 5.6 5.8 5.2 4.1];
  dy2 = [3.0 -4.0];
  xi2=linspace(17,27.7,100);
  x3 = [ 27.7 28 29 30];
  y3 = [ 4.1 4.3 4.1 3.0];
  dy3 = [0.33 -1.5];
  xi3=linspace(27.7,30,100);
  
yi1=zeros(length(xi1),1);
yi2=zeros(length(xi2),1);
yi3=zeros(length(xi3),1);
	for i = 1 : length(xi1)
		yi1(i) = feval('splineC2_natural', xi1(i), x1, y1, dy1(1), dy1(2));
	endfor
	for i = 1 : length(xi2)
		yi2(i) = feval('splineC2_natural', xi2(i), x2, y2, dy2(1), dy2(2));
	endfor
  	for i = 1 : length(xi3)
		yi3(i) = feval('splineC2_natural', xi3(i), x3, y3, dy3(1), dy3(2));
	endfor
  hold on;
	plot(x1, y1, 'g-o', xi1, yi1, 'r-*');
  plot(x2, y2, 'g-o', xi2, yi2, 'r-*');
  plot(x3, y3, 'g-o', xi3, yi3, 'r-*');
	%legend ('data', 'spline C2 tensionat');
	%axis([0 23 -2 2.7]);
  hold off;