FROM python:3.7-buster

RUN apt-get update -y
RUN apt install -q gcc cmake make -y
RUN apt install python3-pip -y
RUN apt install -q python-pip -y
RUN pip3 install numpy
RUN pip3 install matplotlib
RUN pip3 install tk
RUN apt install -q python-tk -y

COPY  poisson_solver /poisson_solver

WORKDIR /poisson_solver

CMD make && ./main && (cd output && python3 plot.py)