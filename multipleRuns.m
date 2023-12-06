clear

f = @(U)1.5*U.^3-U.^5;subcritical = 1;
F = @(U)1.5/4*U.^4-(1/6)*U.^6;
eps = 1e-2;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'f1.5u^3-u^5_r-cos2pix_eps1e-2.png')
close all; save('Data/f1.5u^3-u^5_r-cos2pix_eps1e-2.mat')
pause(0.1)

clear
f = @(U)1.5*U.^3-U.^5;subcritical = 1;
F = @(U)1.5/4*U.^4-(1/6)*U.^6;
eps = 1e-3;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'f1.5u^3-u^5_r-cos2pix_eps1e-3.png')
close all; save('Data/f1.5u^3-u^5_r-cos2pix_eps1e-3.mat')
pause(0.1)

clear
f = @(U)1.5*U.^3-U.^5;subcritical = 1;
F = @(U)1.5/4*U.^4-(1/6)*U.^6;
eps = 5e-4;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'f1.5u^3-u^5_r-cos2pix_eps5e-4.png')
close all; save('Data/f1.5u^3-u^5_r-cos2pix_eps5e-4.mat')
pause(0.1)

clear
f = @(U)1.5*U.^3-U.^5;subcritical = 1;
F = @(U)1.5/4*U.^4-(1/6)*U.^6;
eps = 2e-4;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'f1.5u^3-u^5_r-cos2pix_eps2e-4.png')
close all; save('Data/f1.5u^3-u^5_r-cos2pix_eps2e-4.mat')
pause(0.1)


clear
f = @(U)2*U.^2-U.^3;subcritical = 1;
F = @(U)(2/3)*U.^3-(1/4)*U.^4;
eps = 1e-2;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'f2u^2-u^3_r-cos2pix_eps1e-2.png')
close all; save('Data/f2u^2-u^3_r-cos2pix_eps1e-2.mat')
pause(0.1)

clear
f = @(U)2*U.^2-U.^3;subcritical = 1;
F = @(U)(2/3)*U.^3-(1/4)*U.^4;
eps = 1e-3;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'f2u^2-u^3_r-cos2pix_eps1e-3.png')
close all; save('Data/f2u^2-u^3_r-cos2pix_eps1e-3.mat')
pause(0.1)

clear
f = @(U)2*U.^2-U.^3;subcritical = 1;
F = @(U)(2/3)*U.^3-(1/4)*U.^4;
eps = 5e-4;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'f2u^2-u^3_r-cos2pix_eps5e-4.png')
close all; save('Data/f2u^2-u^3_r-cos2pix_eps5e-4.mat')
pause(0.1)

clear
f = @(U)2*U.^2-U.^3;subcritical = 1;
F = @(U)(2/3)*U.^3-(1/4)*U.^4;
eps = 2e-4;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'f2u^2-u^3_r-cos2pix_eps2e-4.png')
close all; save('Data/f2u^2-u^3_r-cos2pix_eps2e-4.mat')
pause(0.1)


clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-2;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-cos2pix_eps1e-2.png')
close all; save('Data/fu^3-u^7_r-cos2pix_eps1e-2.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-3;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-cos2pix_eps1e-3.png')
close all; save('Data/fu^3-u^7_r-cos2pix_eps1e-3.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 5e-4;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-cos2pix_eps5e-4.png')
close all; save('Data/fu^3-u^7_r-cos2pix_eps5e-4.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 2e-4;rf = @(x)-cos(2*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-cos2pix_eps2e-4.png')
close all; save('Data/fu^3-u^7_r-cos2pix_eps2e-4.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-2;rf = @(x)-0.4*cos(2*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos2pix_eps1e-2.png')
close all; save('Data/fu^3-u^7_r-0.4cos2pix_eps1e-2.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-3;rf = @(x)-0.4*cos(2*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos2pix_eps1e-3.png')
close all; save('Data/fu^3-u^7_r-0.4cos2pix_eps1e-3.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 5e-4;rf = @(x)-0.4*cos(2*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos2pix_eps5e-4.png')
close all; save('Data/fu^3-u^7_r-0.4cos2pix_eps5e-4.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 2e-4;rf = @(x)-0.4*cos(2*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos2pix_eps2e-4.png')
close all; save('Data/fu^3-u^7_r-0.4cos2pix_eps2e-4.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-2;rf = @(x)-0.4*cos(10*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos10pix_eps1e-2.png')
close all; save('Data/fu^3-u^7_r-0.4cos10pix_eps1e-2.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-3;rf = @(x)-0.4*cos(10*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos10pix_eps1e-3.png')
close all; save('Data/fu^3-u^7_r-0.4cos10pix_eps1e-3.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 5e-4;rf = @(x)-0.4*cos(10*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos10pix_eps5e-4.png')
close all; save('Data/fu^3-u^7_r-0.4cos10pix_eps5e-4.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 2e-4;rf = @(x)-0.4*cos(10*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos10pix_eps2e-4.png')
close all; save('Data/fu^3-u^7_r-0.4cos10pix_eps2e-4.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-2;rf = @(x)-0.4*cos(10*pi*x).*sin(sqrt(20)*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos10pixsinsqrt20pix_eps1e-2.png')
close all; save('Data/fu^3-u^7_r-0.4cos10pixsinsqrt20pix_eps1e-2.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-3;rf = @(x)-0.4*cos(10*pi*x).*sin(sqrt(20)*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos10pixsinsqrt20pix_eps1e-3.png')
close all; save('Data/fu^3-u^7_r-0.4cos10pixsinsqrt20pix_eps1e-3.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 5e-4;rf = @(x)-0.4*cos(10*pi*x).*sin(sqrt(20)*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos10pixsinsqrt20pix_eps5e-4.png')
close all; save('Data/fu^3-u^7_r-0.4cos10pixsinsqrt20pix_eps5e-4.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 2e-4;rf = @(x)-0.4*cos(10*pi*x).*sin(sqrt(20)*pi*x);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos10pixsinsqrt20pix_eps2e-4.png')
close all; save('Data/fu^3-u^7_r-0.4cos10pixsinsqrt20pix_eps2e-4.mat')
pause(0.1)


%DO THIS ONE NEXT: 

clear
f = @(U)-U.^3;subcritical = 0;
eps = 2e-4;rf = @(x)-0.4*cos(30*pi*x.^2);
runAndPlot
saveas(gcf,'f-u^3_r-0.4cos30pix^2_eps2e-4.png')
close all; save('Data/f-u^3_r-0.4cos30pix_eps2e-4.mat')
pause(0.1)

clear
f = @(U)-U.^3;subcritical = 0;
eps = 1e-3;rf = @(x)-0.4*cos(30*pi*x.^2);
runAndPlot
saveas(gcf,'f-u^3_r-0.4cos30pix^2_eps1e-3.png')
close all; save('Data/f-u^3_r-0.4cos30pix_eps1e-3.mat')
pause(0.1)


clear
f = @(U)-U.^3;subcritical = 0;
eps = 4e-3;rf = @(x)-0.4*cos(30*pi*x.^2);
runAndPlot
saveas(gcf,'f-u^3_r-0.4cos30pix^2_eps4e-3.png')
close all; save('Data/f-u^3_r-0.4cos30pix_eps4e-3.mat')
pause(0.1)

clear
f = @(U)-U.^3;subcritical = 0;
eps = 1e-2;rf = @(x)-0.4*cos(30*pi*x.^2);
runAndPlot
saveas(gcf,'f-u^3_r-0.4cos30pix^2_eps1e-2.png')
close all; save('Data/f-u^3_r-0.4cos30pix_eps1e-2.mat')
pause(0.1)



clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 2e-4;rf = @(x)-0.4*cos(30*pi*x.^2);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos30pix^2_eps2e-4.png')
close all; save('Data/fu^3-u^7_r-0.4cos30pix_eps2e-4.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-3;rf = @(x)-0.4*cos(30*pi*x.^2);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos30pix^2_eps1e-3.png')
close all; save('Data/fu^3-u^7_r-0.4cos30pix_eps1e-3.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 4e-3;rf = @(x)-0.4*cos(30*pi*x.^2);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos30pix^2_eps4e-3.png')
close all; save('Data/fu^3-u^7_r-0.4cos30pix_eps4e-3.mat')
pause(0.1)

clear
f = @(U)1*U.^3-U.^7;subcritical = 1;
F = @(U)1/4*U.^4-(1/8)*U.^8;
eps = 1e-2;rf = @(x)-0.4*cos(30*pi*x.^2);
runAndPlot
saveas(gcf,'fu^3-u^7_r-0.4cos30pix^2_eps1e-2.png')
close all; save('Data/fu^3-u^7_r-0.4cos30pix_eps1e-2.mat')
pause(0.1)




