%  Hash 只计算汉明距离进行检索

clear all

binary = load('binary48.mat')
feat = load('feat4096.mat')
v = binary.binary_codes';
scores = feat.scores';


val = input('输入想要检索的图片id:')

  linenum =  0 ;
for i =1: length(v)
       d = pdist2(v(val,:), v(i,:),'hamming');
       HH(i,1) =d;
       HH(i,2)=i;
           linenum  = linenum + 1 ;
           if  d <= 0.00000009
                local = linenum ;
           end
       
           
end
%HH = sortrows(HH)
%save HH.mat
save HH.mat HH
 haming = sortrows(HH)
 
 for i =1: 1:6
      dataout = dataread('list.txt',haming(i,2) );
           subplot(2,3,i);
        dataout
        a = imread(dataout);
        imshow(a);
    
end




