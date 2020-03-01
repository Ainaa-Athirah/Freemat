function randomForEach(RNserviceTime, RNintArrTime, RNgenre,RNslot,n)

	disp ( '==============================================================================') 
	disp (' |   Customer   |   RNserviceTime   |  RNintArrTime  |   RNgenre   |   RNslot  |')
	disp (' ==============================================================================')
	for i=1:n

fprintf(' |     %i      |     %i      |     %i     |     %i     |     %i     |\n',  i,RNserviceTime(i), RNintArrTime(i), RNgenre(i),RNslot(i))
	disp('------------------------------------------------------------------------')

end