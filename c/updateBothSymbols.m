function newPairs = updateBothSymbols(pairs, table)
newPairs = pairs;  % копие на масива
for i = 1:length(pairs)
    firstChar  = pairs{i}(1);
    secondChar = pairs{i}(2);

    % Намираме позиции на символите
    [row1, col1] = findSymbol(table, firstChar);
    [row2, col2] = findSymbol(table, secondChar);

    % Обновяване на първия символ
    if row1 == row2
        colNext = mod(col1, size(table,2)) + 1;
        firstChar = table(row1, colNext);
    elseif col1 == col2
        rowNext = mod(row1, size(table,1)) + 1;
        firstChar = table(rowNext, col1);
    else
        firstChar = table(row1, col2);  % правоъгълник
    end

    % Обновяване на втория символ със същите правила
    if row1 == row2
        colNext = mod(col2, size(table,2)) + 1;
        secondChar = table(row2, colNext);
    elseif col1 == col2
        rowNext = mod(row2, size(table,1)) + 1;
        secondChar = table(rowNext, col2);
    else
        secondChar = table(row2, col1);  % правоъгълник
    end

    % Обновяваме новия масив
    newPairs{i} = [firstChar, secondChar];
end

end
