function figure1=createfigure_4(YMatrix1,ttl,leg1,leg2,leg3,leg4)
%CREATEFIGURE(YMatrix1)
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 08-Apr-2020 13:10:58

% Create figure
figure1 = figure;
g=[0 .5 0];
% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0.11 0.13 3.4/4 3.4/6], 'Units','inches')

hold(axes1,'on');

set(axes1,'FontName','Times New Roman','FontSize',12,'FontWeight','bold',...
    'GridAlpha',1,'GridColor',...
    [0.941176470588235 0.941176470588235 0.941176470588235],'XGrid','on','GridLineStyle',...
    '-','YGrid','on');
set(0,'DefaultAxesLineWidth',2,'DefaultLineLineWidth',1)

box(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix1,'LineWidth',5,'Parent',axes1);
set(plot1(1),'DisplayName',leg1,'LineWidth',2,'Color','b');
set(plot1(2),'DisplayName',leg2,'LineWidth',2,'Color','r');
set(plot1(3),'DisplayName',leg3,'LineWidth',2,'Color','k');
set(plot1(4),'DisplayName',leg4,'LineWidth',2,'Color',[0 0.5 0],'Linestyle','-.');

% Create ylabel
ylabel('VUF ');

% Create xlabel
xlabel('Bus Numbers');

% Create title
title(ttl);

box(axes1,'on');
% Set the remaining axes properties
set(axes1,'XGrid','on','YGrid','on');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Location','northwest');

xlim([1 33])