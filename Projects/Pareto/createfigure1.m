function createfigure1(ymatrix1)
%CREATEFIGURE1(ymatrix1)
%  YMATRIX1:  bar matrix data

%  Auto-generated by MATLAB on 05-Jun-2022 18:36:26

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to bar
bar1 = bar(ymatrix1,'BarWidth',0.4,'Parent',axes1);
set(bar1(3),'DisplayName','Phase a',...
    'FaceColor',[0.0235294117647059 0.749019607843137 0.105882352941176]);
set(bar1(2),'DisplayName','Phase b',...
    'FaceColor',[0.635294117647059 0.0784313725490196 0.184313725490196]);
set(bar1(1),'DisplayName','Phase c',...
    'FaceColor',[0 0.447058823529412 0.741176470588235]);

% The following line demonstrates an alternative way to create a data tip.
% datatip(bar1(2),3,1.3);
% Create datatip
datatip(bar1(2),'DataIndex',3);

% The following line demonstrates an alternative way to create a data tip.
% datatip(bar1(2),3,1.3);
% Create datatip
datatip(bar1(2),'DataIndex',3);

% The following line demonstrates an alternative way to create a data tip.
% datatip(bar1(2),3,1.3);
% Create datatip
datatip(bar1(2),'DataIndex',3);

box(axes1,'on');
hold(axes1,'off');
% Set the remaining axes properties
set(axes1,'XTick',[1 2 3 4 5 6 7 8]);
% Create legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.142857127131662 0.783531724418496 0.170833333333333 0.121428571428571]);

