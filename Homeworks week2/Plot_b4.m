l1=40;l2=30;l3=5;l4=30;l5=40;l6=20;
clc
syms t1 t2 pi
for t1=0:0.1:2*pi
	for t2=0:0.1:pi/2
        Px= l1 + cos(t1)*cos(t2)*(l4 + l5) + l6*cos(t2 + t3)*cos(t1);
        Py= l2 + cos(t2)*sin(t1)*(l4 + l5) + l6*cos(t2 + t3)*sin(t1);
        Pz= l3 - sin(t2)*(l4 + l5) - l6*sin(t2 + t3);
        plot3(Px,Py,Pz,"*");
        hold on 
    end
end 