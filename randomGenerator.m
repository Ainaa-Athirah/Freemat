function randomGenerator(RNserviceTime, RNintArrTime, RNgenre, RNslot,n,getGenerator)

	if(getGenerator == 1)
	 	RNserviceTime= LCG(n);
		RNintArrTime= LCG(n);
		RNgenre = LCG(n);
		RNslot= LCG(n);

		Disp2();

		randomForEach( RNserviceTime, RNintArrTime, RNgenre, RNslot,n)
		result (RNserviceTime,RNintArrTime, RNgenre, RNslot,n)

	else (getGenerator == 2)
		RNserviceTime= randomMethod(n);
		RNintArrTime= randomMethod(n);
		RNgenre = randomMethod(n);
		RNslot= randomMethod(n);

		Disp2();
		
		randomForEach( RNserviceTime, RNintArrTime, RNgenre, RNslot,n)
		result (RNserviceTime,RNintArrTime, RNgenre, RNslot,n)
 
   end

end


		
