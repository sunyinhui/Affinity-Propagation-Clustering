filename_in=input('输入需要读取的文件名（及位置）:', 's');
fidin=fopen(filename_in,'r');
nline=0;
while ~feof(fidin)
    tline=fgetl(fidin);
    nline=nline+1;
    if strfind(tline, 'RadiatedEnergy')==1
        [RadiatedEnergy]=strread(tline);
        break;
    end
end