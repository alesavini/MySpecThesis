
clear all

load('OFs.mat')



fig = figure('Units','centimeters','OuterPosition',[3 3 11.25 9]);
%da ridurre poi all'80% per diventare 90mm di larghezza e 72 di altezza (Elsevier)
% invece va bene in png per JACMP 11.25cm = 4.2 inches


    
    

    ax1 = gca;
    set(ax1,'TickDir','out','LineWidth',0.75);
    
    hold on
    plot(CC01_corr(:,1),CC01_corr(:,2),'*:b');
    plot(PFD_corr(:,1),PFD_corr(:,2),'p-r');
    plot(SFD_corr(:,1),SFD_corr(:,2),'s--b');
    
    x = 10;
    y = 1;
%     line('XData', [x x 0], 'YData', [0.7 y y], 'LineWidth', 0.5, ...
%         'LineStyle', '--', 'Color', 'black')
    
    xlabel('Field Size (cm)','FontSize',10)
    ylabel('Output factor','FontSize',10)
    title('Monte Carlo applied','FontSize',10)
%     hlC = line(CC13(:,1),CC13(:,2),'LineWidth',1.5,'Color','b');
%     hlCoarse = line(AnglesAbscissa,calculated,'LineWidth',1.5,'Color','g');    
%     hlCoarse = line(AnglesAbscissa,coarse,'LineWidth',1.5,'Color','g');    

    lh1 = legend('CC01','PFD','SFD', 'Location','SouthEast');
    legend('boxoff')
    
    
%     set(ax1,'YLim',[0.4 1.]);%Metto le ordinate il massimo del misurato più un nticchia così si visualizza bene
    set(ax1,'XLim',[0 4]);
%     xlimits = get(ax1,'XLim');
%     ylimits = get(ax1,'YLim');
%     xinc = (xlimits(2)-xlimits(1))/6;
%     yinc = (ylimits(2)-ylimits(1))/5; %Così il grafico arriva un po più su di 100 ma non scrive 110
%     set(ax1,'XTick',[xlimits(1):xinc:xlimits(2)],...
%         'YTick',[ylimits(1):yinc:ylimits(2)])
    
    pos1 = get(lh1,'Position');
%     set(lh1, 'Color', 'none','Position',[pos1(1)+pos1(3)*0.1; pos1(2)-pos1(4); pos1(3); pos1(4)]);
%     set(ax1,'Position',[0.13 0.1660 0.75 0.759])
%     title(s,'FontSize',10,'FontWeight','n');
    fig.PaperPositionMode = 'auto';
    print(fig,'OFSmallpostMC','-dpng','-r150')
    saveas(fig,'OFSmallpostMC','epsc')