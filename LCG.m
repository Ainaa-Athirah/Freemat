function ret=LCG(n)
x0 = rand()*10;
a = rand()*10;
c = rand()*10;
m = 100;


for i = 1:n
  ret(i) =  (mod(a*x0+c,m));
  x0 = ret(i);
  end
  end