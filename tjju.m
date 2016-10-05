% written by cccandy
clc,clear;
warning off;
for years=2014
     filename=num2str(years)
   fullfilepath = [pwd '\data\' filename];
    dirname=[ num2str(years)];%新的文件夹名
   a=['mkdir ' dirname];%创建命令
   system(a) %；创建文件夹
   for num=1:60
   [savestr,status]=urlwrite(sprintf('http://www.stats.gov.cn/tjsj/ndsj/%d/html/Z21%02dC.xls',years,num),sprintf('%d/%d.xls',years,num),'timeout',15);
   %目标文件
   
   end
  
   
end
