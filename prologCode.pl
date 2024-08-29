%this program flips chosen image 180 degrees

reverseList([], RevList) :- RevList = []. %base case of reversing list to see if empty array was inputted
%defining the actual reversing header of this function
%on the second line we are
reverseList([H|T], RevList) :-  
	reverseList(T, Temp),
	append(Temp, [H], RevList).

dosomething([]). %handling the base case of empty array
dosomething([H|T]) :- write(H), write(' '), dosomething(T). %taking head of function printing it then calling tail as the input of dosomething

main :- 
    read(Input), % reading our desired input
    reverseList(Input, Output), % manipulating input array by reversing it and returning it
    dosomething(Output). % printing out each individual element in reversed order
