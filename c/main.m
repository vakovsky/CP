% for row = 1:size(table, 1)      % външен цикъл по редовете
%     for col = 1:size(table, 2)  % вътрешен цикъл по колоните
%         fprintf('table(%d, %d) = %c\n', row, col, table(row, col));
%     end
% end
table = ...
  ['ЦЕЛКОВ';
   'АБГДЖЗ';
   'ИЙМНПР';
   'СТУФХЧ';
   'ШЩЬЪЮЯ'];
text = 'ЛЕКЦИИТЕСАВПОНЕДЕЛНИК';

pairs = pairChars(text)
newPairs = updateBothSymbols(pairs, table)
