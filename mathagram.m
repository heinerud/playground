function mathagram
    %runMathagram('1xx + xxx = 468')
    %runMathagram('xxx + xxx = 666')
    runMathagram('xxx + xxx + 5x3 + 123 = xxx + 795')
    %runMathagram('xxx + xxx + xxx + x29 + 821 = xxx + xxx + 8xx + 867')
end

function runMathagram(input)
    numPlus = sum(ismember(input, '+'));
    if numPlus == 4
        numPlus = 2;
    elseif numPlus == 7;
        numPlus = 3;
    elseif numPlus == 1;
        numPlus = 1;
    else
        disp('Error')
        return
    end
    
    missing = uint8([]);
    for i=1:9
       numFound = sum(ismember(input, num2str(i)));
       if numFound ~= numPlus
           missing = [missing, repmat(i,1,numPlus-numFound)];
       end
    end
    
    missing = perms(missing);
    missing = unique(missing, 'rows');
    input = strrep(input, '=', '==');
    xPos = strfind(input, 'x');
    for i=1:length(missing)
        if ~mod(i,10000)
            disp([num2str(100*i/length(missing)) ' %'])
        end
        s = input;
        num = missing(i,:);
        for j=1:numel(xPos)
            s(xPos(j)) = num2str(num(j));
        end
        if str2num(s)
            disp(strrep(s, '==', '='))
        end
    end
end