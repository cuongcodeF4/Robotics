l1=40;l2=15;l3=10;l4=30;l5=20;l6=25;l7=18;
clc
syms t1 t2 t3 t4 t5 pi
for t1=0:1:2*pi
	for t2=0:1:pi
		for t3=0:1:pi
            for t4=0:1:pi
                for t5=0:1:2*pi
                    Px= -l5*(cos(t1)*sin(t5) + cos(t2 + t3 + t4)*cos(t5)*sin(t1)) - l1*sin(t1) - l4*cos(t2 + t3)*sin(t1) - l3*cos(t2)*sin(t1) - l6*sin(t2 + t3 + t4)*sin(t1);
                    Py= l1*cos(t1) + l4*cos(t2 + t3)*cos(t1) + l3*cos(t1)*cos(t2) - l5*sin(t1)*sin(t5) + l6*sin(t2 + t3 + t4)*cos(t1) + l5*cos(t2 + t3 + t4)*cos(t1)*cos(t5);
                    Pz= l2 + l6*(sin(t2 + t3)*sin(t4) - cos(t2 + t3)*cos(t4)) + l4*sin(t2 + t3) + l3*sin(t2) + l5*cos(t5)*(cos(t2 + t3)*sin(t4) + sin(t2 + t3)*cos(t4));
                    plot3(Px,Py,Pz,"*");
                    hold on
                end
            end
        end
    end
end        