function message(n,arrivalTime,bought,timeBegin,timeEnd)

for i=1:n
fprintf('Arrival of customer %d at minute %.1f and bought %d tickets.\n',i,arrivalTime(i),bought(i))
fprintf('Service for customer %d started at minute %.1f .\n',i,timeBegin(i))
fprintf('Departure of customer %d at minute %.1f .\n\n',i,timeEnd(i))

 end
end
