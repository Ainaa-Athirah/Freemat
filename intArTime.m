function f=intArTime(x,n)
 for i =1:n
     
     if (x(i) <=20)
         f(i) = 0.4;
         
     elseif (x(i) > 20 & x(i) <= 50)
         f(i) = 0.8;
         
     elseif(x(i) > 50 & x(i) <= 75)
         f(i) = 1.2;
         
     elseif (x(i) > 75 & x(i) <= 90)
         f(i) = 1.6;
         
     else
         f(i) = 2.0;
         
     end
 end
end