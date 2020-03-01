function result(RNserviceTime,RNintArrTime,RNgenre,RNslot,n)

  IntArTime = intArTime(RNintArrTime, n)';
  Slot = slot(RNslot,n)';
  Genre = type(RNgenre,n)';

for i=1:n
	bought(i) = int32(1+rand()*10);
	paid(i) = bought(i)*10;
end

arrivalTime(1) = 0;

serviceTime = service(RNserviceTime,n)';

timeBegin(1) = 0;
waitingTime(1) = 0;
timeEnd(1) = serviceTime(1);
timeSpend(1)=serviceTime(1);

for i=2:n
 arrivalTime(i) = arrivalTime(i-1)+IntArTime(i);
 if(arrivalTime(i) < timeEnd(i-1))
 	waitingTime(i) = timeEnd(i-1)-arrivalTime(i);
 else
 	waitingTime(i)=0;
 end
 if (waitingTime(i)==0)
	 timeBegin(i) =arrivalTime(i);
  else
	timeBegin(i) = arrivalTime(i) + waitingTime(i);
 end
   timeEnd(i) = timeBegin(i) + serviceTime(i);
   timeSpend(i)=waitingTime(i) + serviceTime(i);
end

message(n,arrivalTime,bought,timeBegin,timeEnd)
   disp(' ')
   disp('Result')
   disp('=============================================================================================================================================================')
   disp('| Customer      |       RN for       |Inter-Arrival | Arrival time | RN for the    |  Ticket Slot/day | RN for the    | Ticket Type | Number of ticket | Total amount paid|')
   disp('|               |Inter-arrival Time  |Time          |              |ticket slot/day|                  | ticket type   |             |                  |                  |')
   disp('=============================================================================================================================================================')
fprintf('|       1      |         -          |   -          |     0.0      |      %i       |  %i              |    %i         |   %i        |    %i            |    RM%i             |\n',RNslot(1),Slot(1),RNgenre(1),Genre(1),bought(1),paid(1))
   disp('=============================================================================================================================================================')
for i=2:n
fprintf('|    %i        |     %i             |      %.1f     |    %.1f       |      %i        |   %i             |    %i         |   %i        |    %i             |    RM%i          |\n',i,RNintArrTime(i),IntArTime(i),arrivalTime(i),RNslot(i),Slot(i),RNgenre(i),Genre(i),bought(i),paid(i))
   disp('=============================================================================================================================================================')
end

counters(n,RNserviceTime, arrivalTime,serviceTime,timeBegin,timeEnd,waitingTime,timeSpend)

  remaining(n,Slot,Genre,bought)

  finalsAns(n,waitingTime,IntArTime,serviceTime,paid,timeSpend)

end