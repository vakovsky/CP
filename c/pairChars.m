function newSeq = pairChars(text)
n = length(text);
newSeq = {};  % празен cell array за двойките
index = 1;

while index <= n
    first = text(index);
    
    if index < n
        second = text(index + 1);
        
        % проверка за еднакви символи
        if first == second
            newPair = [first, 'Ь'];  % вторият става 'Ь'
            index = index + 1;       % истинският втори остава за следващата двойка
        else
            newPair = [first, second];
            index = index + 2;
        end
    else
        % последният символ остава сам ? добавяме 'Ь'
        newPair = [first, 'Ь'];
        index = index + 1;
    end
    
    newSeq{end+1} = newPair;
end
end
