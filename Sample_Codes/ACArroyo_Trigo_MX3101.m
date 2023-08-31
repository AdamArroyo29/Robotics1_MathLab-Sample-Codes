disp('Trigonometric Functions')
disp('1)')
disp('r1=sind(120)-cos(7*pi/6)')
disp('r2=cot(3*pi/2)*tan(pi/4)')
disp('R=r1-r2')
r1=sind(120)-cos(7*pi/6);
r2=cot(3*pi/2)*tan(pi/4);
R=r1-r2;
sym(R);
R=ans
pretty(ans);

disp('2)')
disp('s1=cos(t1)*cos(t2)-sin(t1)*sin(t2)')
disp('s2=-cos(t1)*sin(t2)-cos(t2)*sin(t1)')
disp('S=s1*s2')
syms t1 t2
s1=cos(t1)*cos(t2)-sin(t1)*sin(t2);
s2=-cos(t1)*sin(t2)-cos(t2)*sin(t1);
S=s1*s2;
expand(S);
S=ans
pretty(S);

disp('3')
disp('x=a1*cos(t1)+a2*cos(t1)')
disp('y=cos(t2)-a3*sin(t1)*sin(t2)')
disp('z=x*y')
syms t1 t2 a1 a2 a3
x=a1*cos(t1)+a2*cos(t1);
y=cos(t2)-a3*sin(t1)*sin(t2);
z=x*y;
expand(z);
z=ans
pretty(z)