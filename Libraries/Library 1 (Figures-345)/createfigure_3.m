function createfigure_3(YMatrix1,ttl,leg1,leg2,leg3)
%CREATEFIGURE(YMatrix1)
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 08-Apr-2020 13:10:58

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix1,'LineWidth',5,'Parent',axes1);
set(plot1(1),'DisplayName',leg1);
set(plot1(2),'DisplayName',leg2);
set(plot1(3),'DisplayName',leg3,'Color',[0 0.498039215803146 0]);

% Create ylabel
ylabel('VUF ');

% Create xlabel
xlabel('Bus Numbers');

% Create title
title(ttl);

box(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontName','Georgia','XGrid','on','XMinorGrid','on','YGrid','on',...
    'YMinorGrid','on');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.135463169642857 0.767393001373471 0.123828125 0.137426900584795]);

