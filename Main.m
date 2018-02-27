% Karan Nisar
clear
close all
clc

% We call the Compresssion function where the compression code is written.
j1 = Compression1('tower_bridge.jpg',[1;25;50;75;200]);
% The function take 3 arguments 
%First is the image_location
%Second is the various ranks that we want the image to be compressed
% You can play around with different ranks to see the difference.