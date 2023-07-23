fig = generateFigure(10, 6);

xlabels = categorical({'None', 'VGGIsh', 'OpenL3', 'PaSST', 'PANNs'});
xlabels = reordercats(xlabels, {'None', 'VGGIsh', 'OpenL3', 'PaSST', 'PANNs'});
ylabels = {'BL', 'Teacher', 'KD', 'EAsT'};

results = [.437, NaN, NaN, NaN, NaN;
            NaN, .433, .403, .473, .460;
            NaN, .447, .439, .454, .448;
            NaN, .454, .447, .459, .449];

bar(xlabels,results')
ylim([.4 .48])
grid on
ylabel('mAP')
legend(ylabels, 'Location', 'northwest')

printFigure(fig, '../graph/east-results');

