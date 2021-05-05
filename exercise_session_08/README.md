## Exercise 1
I used ```sudo apt install cowsay``` to install cowsay and ran it with ```cowsay "[text]"```.

I was able to install ```make``` and ```g++```, compile the code and run the scripts.

Strangely, I had issues with ```pip```: Although I could install modules with it, they weren't found by ```plot.py```.
So I installed ```pip3``` using ```sudo apt install python3-pip```, which then worked.

## Exercise 2

 My snapshot is called ```hpc_ex8```.

 Somehow I had troubles building the Docker image using the base image ```ubuntu:trusty```,
 because ```numpy``` (again only allowing me to install it with ```pip3```) complained that the Python version was too low.
 This is why I used  ```python:3.7-buster```.
 
 I could build the Docker image and access the results with ```sudo docker run  -v $PWD/poisson_solver:/poisson_solver poisson```.
