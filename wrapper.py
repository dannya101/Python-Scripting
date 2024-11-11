import subprocess #allows me to run outside applications like different languages

print("Running MATLAB CODE 1...")
matlab_executable = "C:/Program Files/MATLAB/R2024b/bin/matlab" #where my matlab executable is on my windows computer
#may be different on other computers

      
#setting up new matlab environment and running first file of matlab code
matlab_process = subprocess.run([matlab_executable, "-batch", "run('matlabcode1.m'); pause(1);"], capture_output = True)

#opening a new file called input.txt, where we are going to read and store values of this image we are using as a matrix of numbers
with open('input.txt', 'r') as file:
    line = file.readline()
    input_array = [int(value) for value in line.split()]
    input_array = [str(value) for value in input_array]

#running my C program
subprocess.run(["gcc", "cccprog.c", "-o", "CProg"])

#run C program with the input array as arguments to this C code then storing this result from C code to a variable
process = subprocess.run(["CProg.exe"] + input_array, capture_output=True, text=True)
output_variable = process.stdout.strip()

print("\nRunning C program output...")

#open a new file c_output.txt, we write new values generated from C program to this new file
with open('c_output.txt', 'w') as f:
    f.write(output_variable)

#running Haskell program
subprocess.run(['ghc', 'hasCode.hs'])

#using the input array of input.txt then generating new values with our haskell code and storing it in a new variable
process = subprocess.run(['./hasCode'] + [str(x) for x in input_array], text=True, capture_output=True)
result = process.stdout.strip()

print("\nRunning Haskell program output...")

#opening a new file where we write new values of input array into this file
with open('haskell_output.txt', 'w') as f:
    f.write(result)

#converting this input array to a string array and also adding syntax to help run with prolog
prolog_input = "[" + ",".join(map(str, input_array)) + "]."

#running prolog file with new input array and then storing into a new variable
result = subprocess.run(['swipl', '-q', '-g', 'main', '-t', 'halt', 'prologCode.pl'], input=prolog_input, capture_output=True, text=True)
output_result = result.stdout.strip()

print("\nRunning Prolog program output...")

#writing to a new file which takes in new values generated from prolog code
with open('prolog_output.txt', 'w') as f:
    f.write(output_result)

#setting up new matlab environement and running second file of matlab code 
matlab_process = subprocess.run([matlab_executable, "-batch", "run('matlabcode2.m'); pause(5);"], capture_output = True)

print("\nProgram Finishing...")
