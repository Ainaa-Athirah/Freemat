function f=type(x,n)
 for i =1:n
     if (x(i) <=5)
         f(i) = 1;
         
     elseif (x(i) > 5 & x(i) <= 45)
         f(i) = 2;
         
     elseif(x(i) > 45 & x(i) <= 75)
         f(i) = 3;
         
     elseif (x(i) > 75 & x(i) <= 85)
         f(i) = 4;
     else
         f(i)=5;
     end
 end
end