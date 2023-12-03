close all

%pI = find(x< 0.51 & x > 0.49);
pI = x>-1;
p1 = plot(x(pI),U(end,pI),'-','linewidth',2); hold on
%p2 = plot(x(pI),r(pI),'.','linewidth',2);
%plot(x,qc,'-.','linewidth',2);
ax = gca;
set(ax, 'fontsize', 16);
%legend('$u$', '$r(x)$', '$q_c(x)$', 'interpreter','latex')
xlabel('$x$','interpreter','latex');

axis tight;

Xs = AllZeros(rf, 0, 1, N);

for i=1:length(Xs)
    line([Xs(i),Xs(i)], ax.YLim,'linestyle','--','color','r','linewidth',1);
    if(subcritical)
        line([Xs2(i),Xs2(i)], ax.YLim,'linestyle','--','color','g','linewidth',1);
        line([Xs3(i),Xs3(i)], ax.YLim,'linestyle','--','color','b','linewidth',1);
    end
end
%legend([p1,p2],'$u$', '$r(x)$', 'interpreter','latex')
%legend([p1], '$u$', 'interpreter','latex')
function z=AllZeros(f,xmin,xmax,N)
% Inputs :
% f : function of one variable
% [xmin - xmax] : range where f is continuous containing zeros
% N : control of the minimum distance (xmax-xmin)/N between two zeros
options = optimset('Display','off');
if (nargin<4)
    N=100;
end
dx=(xmax-xmin)/N;
x2=xmin;
y2=f(x2);
z=[];
for i=1:N
    x1=x2;
    y1=y2;
    x2=xmin+i*dx;
    y2=f(x2);
    if (y1*y2<=0)                              % Rolle's theorem : one zeros (or more) present
        z=[z,fsolve(f,(x2*y1-x1*y2)/(y1-y2),options)]; % Linear approximation to guess the initial value in the [x1,x2] range.
    end
end
end