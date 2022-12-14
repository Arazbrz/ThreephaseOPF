function [figure1,legend1]=createfigure_3r(YMatrix1,ttl)
%CREATEFIGURE(YMatrix1)
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 23-Aug-2020 22:45:56

% Create figure
figure1 = figure;
g=[0 .5 0];
% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0.11 0.13 3.4/4 3.4/6], 'units','inches');

hold(axes1,'on');

set(axes1,'FontName','Times New Roman','FontSize',12,'FontWeight','bold',...
    'GridAlpha',1,'GridColor',...
    [0.941176470588235 0.941176470588235 0.941176470588235],'XGrid','on','GridLineStyle',...
    '-','YGrid','on');
set(0,'DefaultAxesLineWidth',2,'DefaultLineLineWidth',1)

box(axes1,'on');
%xlim(axes1,[0 0.9]);
%ylim(axes1,[0 40]);
% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix1,'LineWidth',1,'Parent',axes1);
set(plot1(1),'DisplayName','ACOPF-PV (a)','LineWidth',2,'Color','b','MarkerSize',6,'MarkerFaceColor',[1 1 1]);
set(plot1(2),'DisplayName','ACOPF-PV (b)','LineWidth',2,'Color','r','MarkerSize',6,'MarkerFaceColor',[1 1 1]);
set(plot1(3),'DisplayName','ACOPF-PV (c)','LineWidth',2,'Color',g,'MarkerSize',6,'MarkerFaceColor',[1 1 1]);
set(plot1(4),'DisplayName','ILACOPF-PV (a)','LineWidth',2,'LineStyle','--','MarkerSize',3,'Color','b');
set(plot1(5),'DisplayName','ILACOPF-PV (b)','LineWidth',2,'LineStyle','--','MarkerSize',3,'Color','r');
set(plot1(6),'DisplayName','ILACOPF-PV (c)','LineWidth',2,'LineStyle','--','MarkerSize',3,'Color',g);
set(plot1(7),'DisplayName','IBLACOPF-PV (a)','LineWidth',1,'LineStyle','-.','Color','b');
set(plot1(8),'DisplayName','IBLACOPF-PV (b)','LineWidth',1,'LineStyle','-.','Color','r');
set(plot1(9),'DisplayName','IBLACOPF-PV (c)','LineWidth',1,'LineStyle','-.','Color',g);

% Create xlabel
xlabel('Bus Numbers','FontName','Times New Roman');

% Create title
title(ttl);

box(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontName','Times New Roman','XGrid','on','XMinorGrid','off','YGrid','on',...
    'YMinorGrid','off');
% Create legend
legend1 = legend(plot1);
set(legend1,'Location','southwest','FontSize',9,'FontWeight','bold','NumColumns',3);