
clear all

load('TG.mat')



fig = figure('Units','centimeters','OuterPosition',[3 3 11.25 9]);
%da ridurre poi all'80% per diventare 90mm di larghezza e 72 di altezza (Elsevier)
% invece va bene in png per JACMP 11.25cm = 4.2 inches


    
    

    ax1 = gca;
    set(ax1,'TickDir','out','LineWidth',0.75);
    myColors = distinguishable_colors(6);
    hold on
    plot(Totm_10cm(:,1)./10,Totm_10cm(:,2),'-','LineWidth',0.5,'color',myColors(1,:));   
    plot(Totc_10cm_002(:,1)./10,Totc_10cm_002(:,2).*1.005,'-.','LineWidth',0.1,'color',myColors(3,:));
    plot(Totc_10cm_005(:,1)./10,Totc_10cm_005(:,2).*1.005,'-','LineWidth',0.1,'color',myColors(2,:));
    plot(Totc_10cm_01(:,1)./10,Totc_10cm_01(:,2).*1.005,'-.','LineWidth',0.1,'color',myColors(6,:));

    
    xlabel('Crossline (cm)','FontSize',10)
    ylabel('Relative dose (%)','FontSize',10)
%     hlC = line(CC13(:,1),CC13(:,2),'LineWidth',1.5,'Color','b');
%     hlCoarse = line(AnglesAbscissa,calculated,'LineWidth',1.5,'Color','g');    
%     hlCoarse = line(AnglesAbscissa,coarse,'LineWidth',1.5,'Color','g');    
% 
%     lh1 = legend('Measured','TG 0.02 cm','TG 0.05 cm','TG 0.10 cm', 'Location','NorthEast','Orientation','Horizontal');
%     legend('boxoff')
    lh1 = columnlegend(2,{'Measured','TG 0.02 cm','TG 0.05 cm','TG 0.10 cm'});
    
    
    set(ax1,'YLim',[35 65]);%Metto le ordinate il massimo del misurato più un nticchia così si visualizza bene
    set(ax1,'XLim',[-6 6]);
%     xlimits = get(ax1,'XLim');
%     ylimits = get(ax1,'YLim');
%     xinc = (xlimits(2)-xlimits(1))/6;
%     yinc = (ylimits(2)-ylimits(1))/5; %Così il grafico arriva un po più su di 100 ma non scrive 110
%     set(ax1,'XTick',[xlimits(1):xinc:xlimits(2)],...
%         'YTick',[ylimits(1):yinc:ylimits(2)])
    
    pos1 = get(lh1,'Position');
    set(lh1, 'Color', 'none','Position',[pos1(1)-pos1(3)*0.; pos1(2)+.3*pos1(4); pos1(3); pos1(4)]);
%     set(ax1,'Position',[0.13 0.1660 0.75 0.759])
%     title(s,'FontSize',10,'FontWeight','n');
    fig.PaperPositionMode = 'auto';
%     print(fig,'abutted_m','-dpng','-r150')
    saveas(fig,'TG_modelingZOOM','epsc')