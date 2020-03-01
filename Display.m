function Display
    disp (' ========================================= ' )
	disp (' ||    	TICKET SERVICE SIMULATOR        || ')
	disp (' ========================================= ' )
	
	disp (' ')
	
	disp ( 'Ticket Infromation Table ')
	disp ( '============================================================================') 
	disp (' | Slot      | Total Ticket | Total Ticket | Total Ticket |  Total Ticket   |')
	disp (' | per Day   |    Horror    |    Action    |    Sci-fi    |	Romance    |')
	disp (' ============================================================================')
	disp (' | 10am-12pm |	  40	   |     40	  |      40	 |      40	   |')  
	disp (' ----------------------------------------------------------------------------')
	disp (' |  2pm-4pm  |     40       |     40	  |      40	 |      40	   |')
	disp (' ----------------------------------------------------------------------------')
	disp (' |  4pm-6pm  |     40       |     40	  |      40	 |      40	   |')
	disp (' ----------------------------------------------------------------------------')
	disp (' |  6pm-8pm  |     40       |     40	  |      40	 |      40	   |')
	disp (' ----------------------------------------------------------------------------')
	disp (' |  8pm-10pm |     40       |     40	  |      40	 |      40	   |')
	disp (' ============================================================================')
	
    disp(' ')

	disp( ' Please enter your choice of generator: ')
	disp( ' 1. Linear Congruential Generator ')
	disp( ' 2. Rand{} Function ')
	disp( ' ')
 
	getGenerator = input('Choose one generator provided above ');

	while(getGenerator ~=1 && getGenerator ~=2)  %loop for the generator choice
		getGenerator = input ('Choose one generator provided above: ');
	end

	n = input ('How many customers will come: ');

	while(n<= 0)
	n = input('How many customers will come :');
	end

	for i=1:n
		RNserviceTime(i) = 0;
		RNintArrTime(i) = 0;
		RNgenre(i) =0;
		RNslot(i) =0;
	end

        randomGenerator(RNserviceTime ,RNintArrTime,RNgenre,RNslot,n,getGenerator); %invokes the RGN function
end