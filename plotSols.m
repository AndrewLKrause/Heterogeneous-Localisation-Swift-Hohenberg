close all

%p1 = plot(x,U(end,:),'-*','linewidth',2); hold on
 % Above is useful to see if enough grid points have been used.
p1 = plot(x,U(end,:),'-','linewidth',2); hold on
p2 = plot(x,r,'.','linewidth',2);
p3 = plot(x,qc,'-.','linewidth',2);
ax = gca;
%set(ax, 'fontsize', 16);
%legend('$u$', '$r(x)$', '$q_c(x)$', 'interpreter','latex')
xlabel('$x$','interpreter','latex');

axis tight;


Xs = AllZeros(rf, 0, 1, N);
for i=1:length(Xs)
    line([Xs(i),Xs(i)], ax.YLim,'linestyle','--','color','r','linewidth',2);
    line([Xs(i),Xs(i)], ax.YLim,'linestyle','--','color','r','linewidth',2);
end
legend([p1,p2,p3],'$u$', '$r$','$q_c$', 'interpreter','latex')

pI = find(homStab>0);
if(nnz(pI)>0)
    p4 = plot(x(pI),homStab(pI),'*','linewidth',2);
    legend([p1,p2,p3,p4],'$u$', '$r$','$q_c$','$r-q_c^4$', 'interpreter','latex')
end
figure

imagesc(flipud(U))

function z=AllZeros(f,xmin,xmax,N)
% Inputs :
% f : function of one variable
% [xmin - xmax] : range where f is continuous containing zeros
% N : control of the minimum distance (xmax-xmin)/N between two zeros
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
        z=[z,fsolve(f,(x2*y1-x1*y2)/(y1-y2),optimoptions('fsolve','display','off'))]; % Linear approximation to guess the initial value in the [x1,x2] range.
    end
end
end