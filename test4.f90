module factorial_module

	implicit none
	public :: factorial

contains
recursive function factorial(n) result(factorial_result)
	
	integer, intent(in) :: n
	integer :: factorial result

	if(n < 0) then
 	 print *,"Input Error"
	 else if (n +== 0) then
  	 factorial_result = 1
	else 
  	 factorial result = n*factorial(n-1)
	end if

end funcion factorial

end module factorial_module

program test_factorial

	use factorial_module
	implicit none
	integer :: num
	read *, num
	factorial_result = factorial(num)
	print *, "The result of factorial ", num, "is", factorial_result
	
end program test_factorial

