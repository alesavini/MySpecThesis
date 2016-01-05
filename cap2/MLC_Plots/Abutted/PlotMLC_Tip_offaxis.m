
clear all

load('AbuttedOffAxis.mat')



fig = figure('Units','centimeters','OuterPosition',[3 3 11.25 9]);
%da ridurre poi all'80% per diventare 90mm di larghezza e 72 di altezza (Elsevier)
% invece va bene in png per JACMP 11.25cm = 4.2 inches


    
    

    ax1 = gca;
    set(ax1,'TickDir','out','LineWidth',0.75);
    hold on
    %     plot(Prof1m(:,1)./10,Prof1m(:,2),'-','LineWidth',1,'MarkerSize',20);
    %     plot(Prof2m(:,1)./10,Prof2m(:,2),'-','LineWidth',1,'MarkerSize',20);
    plot(prof_min90(:,1)./10,prof_min90(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_min70(:,1)./10,prof_min70(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_min50(:,1)./10,prof_min50(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_min30(:,1)./10,prof_min30(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_min10(:,1)./10,prof_min10(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_plu10(:,1)./10,prof_plu10(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_plu30(:,1)./10,prof_plu30(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_plu50(:,1)./10,prof_plu50(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_plu70(:,1)./10,prof_plu70(:,2),'LineWidth',1,'MarkerSize',20);
    plot(prof_plu90(:,1)./10,prof_plu90(:,2),'LineWidth',1,'MarkerSize',20);



    x = 10;
    y = 1;
    
    xlabel('Crossline (cm)','FontSize',10)
    ylabel('Relative dose (%)','FontSize',10)
%     hlC = line(CC13(:,1),CC13(:,2),'LineWidth',1.5,'Color','b');
%     hlCoarse = line(AnglesAbscissa,calculated,'LineWidth',1.5,'Color','g');    
%     hlCoarse = line(AnglesAbscissa,coarse,'LineWidth',1.5,'Color','g');    

    lh1 = legend('Measured Profiles', 'Location','NorthEast');
    legend('boxoff')
    
    
%     set(ax1,'YLim',[0 1.2]);%Metto le ordinate il massimo del misurato più un nticchia così si visualizza bene
    set(ax1,'XLim',[-10 10]);
%     xlimits = get(ax1,'XLim');
%     ylimits = get(ax1,'YLim');
%     xinc = (xlimits(2)-xlimits(1))/6;
%     yinc = (ylimits(2)-ylimits(1))/5; %Così il grafico arriva un po più su di 100 ma non scrive 110
%     set(ax1,'XTick',[xlimits(1):xinc:xlimits(2)],...
%         'YTick',[ylimits(1):yinc:ylimits(2)])
    
    pos1 = get(lh1,'Position');
    set(lh1, 'Color', 'none','Position',[pos1(1)+pos1(3)*0.; pos1(2)+.3*pos1(4); pos1(3); pos1(4)]);
%     set(ax1,'Position',[0.13 0.1660 0.75 0.759])
%     title(s,'FontSize',10,'FontWeight','n');
    fig.PaperPositionMode = 'auto';
%     print(fig,'abutted_m','-dpng','-r150')
    saveas(fig,'PlotMLC_Tip_modeling_offaxis','epsc')