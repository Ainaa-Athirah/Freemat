function counters(n,RNserviceTime,arrivalTime,serviceTime,timeBegin,timeEnd,waitingTime,timeSpend)
customer(1)=1;

disp('===============================================================================================')
disp('|	Customer	 | RN for 		    |  Service | Time Service | Time service| Waiting | Time spends |')
disp('| 			       | Service Time	|   Time   |   	 begins	  |    Ends     |  Time   |in the system|')
disp('===============================================================================================')

fprintf(' |     %d    |     %d     |     %d     |     %.1f  |     %.1f  |    %.1f  |     %d  |\n',customer(1),RNserviceTime(1),serviceTime(1),timeBegin(1),timeEnd(1),waitingTime(1),timeSpend(1))
disp('-----------------------------------------------------------------------------------------------')

for i=2 :n  %loop for the the counters
fprintf(' |     %d    |     %d     |     %d     |     %.1f  |     %.1f  |    %.1f  |     %d  |\n', i ,RNserviceTime(i),serviceTime(i),timeBegin(i),timeEnd(i),waitingTime(i),timeSpend(i))

disp('-----------------------------------------------------------------------------------------------')

end
end 