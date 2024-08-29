#include <stdio.h>
#include <stdlib.h>

//this program takes all pixel values and converts to either a value of 255 or 0 
//which results from which side of the threshold the value is on
//255 pixel value shows white
//0 pixel value shows black

int main(int argc, char *argv[]) {

int *arrayPtr = NULL; //creating a pointer variable
int arg; 
arrayPtr = (int*) malloc((argc - 1) * sizeof(int)); //using malloc to dyanmically allocate memory

for(arg = 1; arg < argc; arg++){ // looping through the array of argv and arrayPtr to test if argv should become a pixel value of 255 or 0
	if(atof(argv[arg - 1]) > 170) // comparing argv values to the threshold
	{
		arrayPtr[arg - 1] = 255; // setting arrayPtr to new value of 255
	}
	else
	{
		arrayPtr[arg - 1] = 0; // setting arrayPtr to new value of 0
	}
	printf("%d ", arrayPtr[arg - 1]); // printing new values that were generated from the if statement
}
free(arrayPtr); // freeing up memory allocation to free memory to reduce wasting of memory
arrayPtr = NULL; // resetting arrayPtr value
return 0;
}
