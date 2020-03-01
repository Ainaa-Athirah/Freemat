function finalAns(n,waitingTime,IntArTime,serviceTime,paid,timeSpend)

totalWait = 0;
totalIntArTime = 0;
waited = 0;
totalSpent = 0;
totalServiceTime = 0;
sales=0;

 for i=1:n
	totalWait= totalWait + waitingTime(i);
	totalIntArTime= totalIntArTime + IntArTime(i);
	totalServiceTime= totalServiceTime + serviceTime(i);
	totalSpent= totalSpent + timeSpend(i);
	sales= sales + paid(i);
	if(waitingTime(i) ~=0)
		waited = waited + 1;
	end
 end
	
	avgWaiting = totalWait./n;
	probWait = waited./n;
	avgServiceTime = totalServiceTime./n;
	avgIntArTime = totalIntArTime./n;
	avgTimeSpent = totalSpent./n;
	
	fprintf('Average waiting time for each customer: %.1f .\n',avgWaiting)
	fprintf('Probability that a customer has to wait: %.1f .\n',probWait)
	fprintf('Average service time for each customer: %.1f .\n',avgServiceTime)
	fprintf('Average inter-arrival time for each customer: %.1f .\n',avgIntArTime)
	fprintf('Average time spent for each customer in the system: %.1f .\n',avgTimeSpent)
end