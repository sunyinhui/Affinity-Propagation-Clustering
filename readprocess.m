
function array=readprocess(file)
fid=fopen(file,'rt');
if(fid==-1)
     display('File not exist!');
     return;
end
array=[];
while(~feof(fid))
     str=fscanf(fid,'%s',3)
     length(str)
     if(length(str)>1)
         %d+00005.00;v+00002.72;e+00002.28;u-0007;m+0761;t+0295;
         col=sscanf(str,'node_%f --> node_%f;');
         array=[array col];
     end
end
fclose(fid);