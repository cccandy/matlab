
for z=1:24
for i=1:58
    n=1:1:144
    
figure
plot(n, gap(i,n,z), 'b', n, des(i,n,z), 'r.',n, start(i,n,z), 'g ' ,'LineWidth', 2)

% Turn on the grid
grid on

% Set the axis limits
axis([0 144 0 1100])
myFileName=['skygap' num2str(z) '-' num2str(i) '.jpg']
print('-djpeg',myFileName,'-r600');

end
close all
end
