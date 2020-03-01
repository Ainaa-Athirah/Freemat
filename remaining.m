function remaining(n,Slot,Genre,bought)
    for i=1:5
        
        a(i)=40;
        aBought(i)=0;
        b(i)=40;
        bBought(i)=0;
        c(i)=40;
        cBought(i)=0;
        d(i)=40;
        dBought(i)=0;
        e(i)=40;
        eBought(i)=0;
    end	

    for i=1:n
if(Slot(i) ==1 && Genre(i) ==1)
	aBought(1)=aBought(1)+bought(i);
elseif(Slot(i) ==2 && Genre(i) ==1)
	aBought(2)=aBought(2)+bought(i);
elseif(Slot(i) ==3 && Genre(i) ==1)
	aBought(3)=aBought(3)+bought(i);
elseif(Slot(i) ==4 && Genre(i) ==1)
	aBought(4)=aBought(4)+bought(i);
elseif(Slot(i) ==5 && Genre(i) ==1)
	aBought(5)=aBought(5)+bought(i);
 
elseif(Slot(i) ==1 && Genre(i) ==2)
	bBought(1)=bBought(1)+bought(i);
elseif(Slot(i) ==2 && Genre(i) ==2)
	bBought(2)=bBought(2)+bought(i);
elseif(Slot(i) ==3 && Genre(i) ==2)
	bBought(3)=bBought(3)+bought(i);
elseif(Slot(i) ==4 && Genre(i) ==2)
	bBought(4)=bBought(4)+bought(i);
elseif(Slot(i) ==5 && Genre(i) ==2)
	bBought(5)=bBought(5)+bought(i);
 
elseif(Slot(i) ==1 && Genre(i) ==3)
	cBought(1)=cBought(1)+bought(i);
elseif(Slot(i) ==2 && Genre(i) ==3)
	cBought(2)=cBought(2)+bought(i);
elseif(Slot(i) ==3 && Genre(i) ==3)
	cBought(3)=cBought(3)+bought(i);
elseif(Slot(i) ==4 && Genre(i) ==3)
	cBought(4)=cBought(4)+bought(i);
elseif(Slot(i) ==5 && Genre(i) ==3)
	cBought(5)=cBought(5)+bought(i);
 
elseif(Slot(i) ==1 && Genre(i) ==4)
	dBought(1)=dBought(1)+bought(i);
elseif(Slot(i) ==2 && Genre(i) ==4)
	dBought(2)=dBought(2)+bought(i);
elseif(Slot(i) ==3 && Genre(i) ==4)
	dBought(3)=dBought(3)+bought(i);
elseif(Slot(i) ==4 && Genre(i) ==4)
	dBought(4)=dBought(4)+bought(i);
elseif(Slot(i) ==5 && Genre(i) ==4)
	dBought(5)=dBought(5)+bought(i);
 
elseif(Slot(i) ==1 && Genre(i) ==5)
	eBought(1)=eBought(1)+bought(i);
elseif(Slot(i) ==2 && Genre(i) ==5)
	eBought(2)=eBought(2)+bought(i);
elseif(Slot(i) ==3 && Genre(i) ==5)
	eBought(3)=eBought(3)+bought(i);
elseif(Slot(i) ==4 && Genre(i) ==5)
	eBought(4)=eBought(4)+bought(i);
elseif(Slot(i) ==5 && Genre(i) ==5)
	eBought(5)=eBought(5)+bought(i);	
end
    end

for i=1:5
a(i) = a(i)-aBought(i);
b(i) = b(i)-bBought(i);	
c(i) = c(i)-cBought(i);
d(i) = d(i)-dBought(i);	
e(i) = e(i)-eBought(i);	
end

   disp(' ')
   disp(' Tickets Remaining:')
   disp('|slot per   |  Total ticket | Total Tickets | Total Tickets | Total Tickets | Total Tickets    |')
   disp('|	Day       |   Horror	     |    Comedy     |   Action      |   Sci-fi      |    Romantic       |')
   disp('=================================================================================================')
for i=1:5
fprintf('|	   %d        |		 %d        |		 %d       |		 %d       |	    %d        |		 %d      |\n',i,a(i),b(i),c(i),d(i),e(i))
   disp('=================================================================================================')
end
end  
