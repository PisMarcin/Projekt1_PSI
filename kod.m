close all; clear all; clc;

net=newp([0 1; -2 2],1); % tworzy perceptron składajacy sie z 2 elementow,
% gdzie pierwszy w zakresie (0,1), drugi(-2,2) i jeden neuron.

W=[0 0 1 1; 0 1 0 1];
T=[0 0 0 1]; 
% parametry

net=init(net); 
% inicjalizacja dowolnymi parametrami

sym_przed=sim(net,W)
% symulacja w SiMULiNK 
% pierwszy argument to model
% a drugi parametry

net.trainParam.epochs=10; 
% maksymalna wartość iteracji to 20;
net=train(net,W,T);
% uczenie sieci
sym_po = sim(net,W)
