%show 
% 读取txt文件
DD = load('DD.mat');

for i =1: 1:6
        dataout = dataread('imagelist.txt',DD.DD(i,2) );
        subplot(2,3,i);
        dataout
        a = imread(dataout);
        imshow(a);
    
end




