l1=25;l2=25;
clc
syms t1 t2 pi

for t=-pi:0.05:pi
    X = 15*(sin(t)^3);
    Y = 12*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
    
    c2=(X^2 + Y^2 -l1^2-l2^2)/(2*l1*l2);
    s2=sqrt(abs(1-c2^2));
    t2= atan2(s2,c2);
    
    c1=X*(l1+l2*c2)+Y*l2*s2;
    s1=Y*(l1+l2*c2)-X*l2*s2;
    t1=atan2(s1,c1);
   
    Px=l1*cos(t1)+l2*cos(t1+t2);
    Py= l1*sin(t1)+ l2*sin(t1+t2);
    
    subplot(2,1,1)
    plot(t,t1*180/pi,'--o',t,t2*180/pi,'--o');   pause(0.05);
    xlabel('t');
    ylabel('Rotation');
    hold on
    
    subplot(2,1,2)
    plot(Px,Py,'--o');
    xlabel('x(cm)');
    ylabel('y(cm)');
    pause(0.05);
    hold on
end