function f=service(x,n)
 for i =1:n
     
     if (x(i) <=20)
         f(i) = 1;
         
     elseif (x(i) > 20 & x(i) <=50)
         f(i) = 2;
         
     elseif (x(i) > 50 & x(i) <= 85)
         f(i) = 3;
         
     elseif (x(i) > 85 & x(i) <=95)
         f(i) = 4;
     else
         f(i)=5;
     end
 end
end