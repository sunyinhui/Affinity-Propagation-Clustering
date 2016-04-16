function dataout=dataread(filein,line)
fidin=fopen(filein,'r');
%fidout=fopen(fileout,'w');
nline=0;
while ~feof(fidin) % 判断是否为文件末尾
tline=fgetl(fidin); % 从文件读行
nline=nline+1;
    if nline==line
      %  fprintf(fidout,'%s\n',tline);
        dataout=tline;
        
    end
end
%fclose(fidin);
%fclose(fidout);

