l1=40;l2=40;
clc
syms t1 t2 t3 pi
for t1=0:0.01:pi/8
	for t2=0:0.01:pi/4
        for t3=0:0.01:pi/8
            Px= -cos(t2)*sin(t1)*(l1 + l2);
            Py=  sin(t2)*(l1 + l2);
            Pz=  -cos(t1)*cos(t2)*(l1 + l2);
            plot3(Px,Py,Pz,"*");
            hold on
         end
     end
end     