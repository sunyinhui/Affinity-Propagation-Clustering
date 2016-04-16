clear all

binary = load('binary48.mat')
feat = load('feat4096.mat')
v = binary.binary_codes';
scores = feat.scores';
val = input('输入想要检索的图片id:')
path = 'imagedata.txt';
f = fopen(path, 'wt');
  linenum =  0 ;
for i =1: length(v)
       d = pdist2(v(val,:), v(i,:),'hamming');
       HH(i,1) =d;
       HH(i,2)=i;
      if d<=0.3
          disp(i);
           
          %s = scores(i,:);
          % fprintf(f, '%s\r\n', scores(i,:) );
          % save('imagedata.mat' , 's', '-v7.3','-append')
        %  dlmwrite('imagelist.txt', binary.list_im(i),'-append')
            % save( 'imagelist1.txt', s , '-append')
            
          % dlmwrite('imagedata.txt', scores(i,:)' ,'-append')
         % dlmwrite('imagedata.txt',scores(i,:) , '-append', 'roffset', 1,'precision', 5, 'delimiter', ' ')
             dlmwrite('imagedata.txt', scores(i,:), '-append', 'delimiter', ' ')
     
          %save('imagelist.txt', binary.list_im(i), '-append')
           dlmwrite('imagelist.txt', binary.list_im(i), '-append','delimiter','')
           linenum  = linenum + 1 ;
                      if  d <= 0.00000009
                              local = linenum ;
                       end
       
        end
       
end
%HH = sortrows(HH)
%save HH.mat

fprintf('所要检索的图像是：%d\n',local )



       


