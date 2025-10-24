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

% Потребителски ключ
validKey = false;
while ~validKey
    key = input('Въведи ключ от 6 различни символа: ', 's');
    
    if length(key) ~= 6
        fprintf('Ключът трябва да е точно 6 символа!\n');
        continue
    end
    if length(unique(key)) ~= 6
        fprintf('Всички символи трябва да са различни!\n');
        continue
    end
    validKey = true;
end

% Даден низ с азбука/символи за таблицата
alphabet = 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЧШЩЬЪЮЯ';  % пример

% Премахваме символите, които са в ключа
remainingChars = alphabet(~ismember(alphabet, key));

% Проверка, че имаме достатъчно символи
if length(remainingChars) < 24
    error('Няма достатъчно символи за останалите редове.');
end

% Създаваме останалите редове (по 6 символа на ред)
tableRows = reshape(remainingChars(1:24), 6, 4)';  % 4 реда по 6 символа

% Комбинираме с ключа
table = [key; tableRows];

disp('Създадена таблица:')
disp(table)

pairs = pairChars(text)
newPairs = updateBothSymbols(pairs, table)
