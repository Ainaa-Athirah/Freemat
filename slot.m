function f=slot(x,n)
 for i =1:n
     
     if (x(i) <=5)
         f(i) = 1;
         
     elseif (x(i) > 5 & x(i) <= 15)
         f(i) = 2;
         
     elseif(x(i) > 15 & x(i) <= 40)
         f(i) = 3;
         
     elseif (x(i) > 40 & x(i) <= 50)
         f(i) = 4;
         
     else
         
         f(i)=5;
     end
 end
end