l1=50;l2=15;l3=40;l4=30;l5=10;l6=15;
clc
syms t1 t2 t3 t4 pi
for t1=0:1:2*pi
	for t2=0:1:pi
		for t3=0:1:pi
            for t4=0:1:2*pi
                Px=-sin(t1)*(l4*cos(t2 + t3) + l3*cos(t2) + l5*cos(t2 + t3 + t4) - l6*sin(t2 + t3 + t4));
                Py=cos(t1)*(l4*cos(t2 + t3) + l3*cos(t2) + l5*cos(t2 + t3 + t4) - l6*sin(t2 + t3 + t4));
                Pz=l1 + l2 + l4*sin(t2 + t3) + l3*sin(t2) + l6*cos(t2 + t3 + t4) + l5*sin(t2 + t3 + t4);
                plot3(Px,Py,Pz,"*");
                hold on
            end
        end
    end
end        
    

