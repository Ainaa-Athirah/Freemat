function f = randomMethod(n)
  for i = 1:n
      f(i) = int32(rand()*100);
  end
end