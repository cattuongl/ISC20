/*By: Cattuong Le
Date : March 5 2015
Program: OO turing 4.1.1
Purpose: Game for grade 5 Students*/

%Delcaring the variable
var sum, difference, product, quotient : int
var useroption, comp : int
var num1, num2, num3 : int
var useranswer : int
var question : int
var average : real
var useroption2 : string
var count : int
var totalcount : int
totalcount := 0
loop
    count := 0
    question := 0
    
    %Introduction
    color (54)
    put " Welcome to Math Game 2k15"
    delay (3000)
    cls
    color (34)
    
    %User Input
    put " Choose 1:addition, 2:subtraction, 3:multiplication, 4:division, or 5:random "
    get useroption
    cls


    %ADDITION
    color (36)
    if useroption = 1 then

	for answer : 1 .. 20

	    num1 := Rand.Int (1, 30)
	    num2 := Rand.Int (1, 30)

	    sum := num1 + num2

	    put num1, "+", num2

	    get useranswer
	    if (useranswer = sum) then
		put "correct"
		delay (1000)
		count := count + 1

	    elsif (useranswer not= sum) then
		put "incorrect"
	    end if
	    delay (1000)
	    question := question + 1
	    cls
	end for

	put "you got", count, "correct out of 20"
	delay (2000)
	cls


	%SUBTRACTION
    elsif useroption = 2 then

	for answer : 1 .. 20

	    num1 := Rand.Int (1, 30)
	    num2 := Rand.Int (1, 30)
	    if (num2 > num1) then

		difference := num2 - num1

		put num2, "-", num1

		get useranswer
		if (useranswer = difference) then
		    put "correct"
		    delay (1000)
		    count := count + 1

		elsif (useranswer not= difference) then
		    put "incorrect"
		    delay (1000)

		end if
		question := question + 1
	    elsif (num1 > num2) then

		difference := num1 - num2

		put num1, "-", num2

		get useranswer
		if (useranswer = difference) then
		    put "correct"
		    delay (1000)
		    count := count + 1

		elsif (useranswer not= difference) then
		    put "incorrect"
		    delay (1000)

		end if
		question := question + 1
		cls
	    end if
	end for

	put "you got", count, "correct out of 20"
	delay (2000)
	cls


	%MULTIPLICATION
    elsif useroption = 3 then

	for answer : 1 .. 20

	    num1 := Rand.Int (1, 12)
	    num2 := Rand.Int (1, 12)

	    product := num1 * num2

	    put num1, "*", num2

	    get useranswer
	    if (useranswer = product) then
		put "correct"
		delay (1000)
		count := count + 1

	    elsif (useranswer not= product) then
		put "incorrect"
		delay (1000)
	    end if
	    question := question + 1
	    cls
	end for

	put "you got", count, "correct out of 20"
	delay (2000)
	cls


	%DIVISION
    elsif useroption = 4 then

	for answer : 1 .. 20

	    num1 := Rand.Int (1, 12)
	    num2 := Rand.Int (1, 12)

	    quotient := num1 * num2

	    put quotient, "/", num2

	    get useranswer
	    if (useranswer = num1) then
		put "correct"
		delay (1000)
		count := count + 1

	    elsif (useranswer not= quotient) then
		put "incorrect"
		delay (1000)
	    end if
	    delay (1000)
	    question := question + 1
	    cls
	end for

	put "you got", count, "correct out of 20"
	delay (2000)


	%Mixed Numbers
    elsif useroption = 5 then
	loop
	    num3 := Rand.Int (1, 4)
	    for answer : 1 .. 20
		%addition
		if (num3 = 1) then
		    num1 := Rand.Int (1, 30)
		    num2 := Rand.Int (1, 30)

		    sum := num1 + num2

		    put num1, "+", num2

		    get useranswer
		    if (useranswer = sum) then
			put "correct"
			delay (1000)
			count := count + 1

		    elsif (useranswer not= sum) then
			put "incorrect"
		    end if
		    delay (1000)
		    question := question + 1
		    cls
		    %subtraction
		elsif (num3 = 2) then

		    num1 := Rand.Int (1, 30)
		    num2 := Rand.Int (1, 30)
		    if (num2 > num1) then

			difference := num2 - num1

			put num2, "-", num1

			get useranswer
			if (useranswer = difference) then
			    put "correct"
			    delay (1000)
			    count := count + 1

			elsif (useranswer not= difference) then
			    put "incorrect"
			    delay (1000)

			end if
			question := question + 1
		    elsif (num1 > num2) then

			difference := num1 - num2

			put num1, "-", num2

			get useranswer
			if (useranswer = difference) then
			    put "correct"
			    delay (1000)
			    count := count + 1

			elsif (useranswer not= difference) then
			    put "incorrect"
			    delay (1000)

			end if
			question := question + 1
			cls
		    end if
		elsif (num3 = 3) then

		    %multiplication
		    num1 := Rand.Int (1, 12)
		    num2 := Rand.Int (1, 12)

		    product := num1 * num2

		    put num1, "*", num2

		    get useranswer
		    if (useranswer = product) then
			put "correct"
			delay (1000)
			count := count + 1

		    elsif (useranswer not= product) then
			put "incorrect"
			delay (1000)
		    end if
		    question := question + 1
		    cls

		elsif (num3 = 4) then

		    %division
		    num1 := Rand.Int (1, 12)
		    num2 := Rand.Int (1, 12)

		    quotient := num1 * num2

		    put quotient, "/", num2

		    get useranswer
		    if (useranswer = num1) then
			put "correct"
			delay (1000)
			count := count + 1

		    elsif (useranswer not= quotient) then
			put "incorrect"
			delay (1000)
		    end if
		    delay (1000)
		    question := question + 1
		    cls

		end if
	    end for
	end loop
	
	put "you got", count, "correct out of 20"
	delay (2000)
    end if



    %adding total questions right
    totalcount := totalcount + count
    
    %finding the average
    average := count / question * 100
    put " do you want to play again?"
    get useroption2


    exit when useroption2 = "no"
    put "replaying"

end loop

color (45)
put " you got", totalcount, "correct in total"

put " Your mark is", average, "%"

