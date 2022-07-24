from operator import xor
from random import randint, random

ram_name = input("Rame name : ")
number_of_words = input("Number of words : ")
print("")
number_of_words = int(number_of_words)
words = []
results = []
words.append(number_of_words)
for i in range(number_of_words):
    if (number_of_words == 255):
        words.append(i)
    else:
        words.append(randint(0,256))
state1 = 0
state2 = 0
for i in range(1,number_of_words+1):
    word = words[i]
    print("considered word : "+ str(word))
    z = []
    bit1 = 0
    bit2 = 0
    binary_int = bin(word).replace("0b","")
    while(len(binary_int)<8):
        binary_int = '0'+binary_int
    print("binary 8 bit word :"+binary_int)
    for bit in binary_int:
        print("bit in input : "+bit+" stato : t1 e t2   "+str(state1)+" "+str(state2))
        bit1 = xor(int(bit),state2)
        bit2 = xor(xor(int(bit),state1),state2)
        print("out 1 e out 2"+ str(bit1)+" "+str(bit2))
        z.append(bit1)
        z.append(bit2)
        state2 = state1
        state1 = int(bit)
    print("z :"+str(z))
    num1 = ""
    num2 = ""
    for j in range(8):
        num1 = num1+str(z[j])
    for j in range(8,16):
        num2 = num2+str(z[j])
    num1 = int(num1,2)
    num2 = int(num2,2)
    print("generated word 1 : "+str(num1))
    print("generated word 2 : "+str(num2))
    print("")
    results.append(z[0:7])
    results.append(z[8:15])

    