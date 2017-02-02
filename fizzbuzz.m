function fizzbuzz
    t = 30;
    tic
    run(t)
    toc
end

function strCell = run(in)
    map = 1:in;
    strCell = cell(1,in);
    map(~mod(map,15)) = 0.1;
    map(~mod(map,3)) = -0.5;
    map(~mod(map,5)) = 0.5;
    map = num2cell(map);
    map(find(map==0.1)) = 'FizzBuzz';
    
    parfor i=1:in
        if ~mod(i,15)
            str = 'FizzBuzz';
        elseif ~mod(i,3)
            str = 'Fizz';
        elseif ~mod(i,5)
            str = 'Buzz';
        else
            str = i;
        end
        strCell{i} = str;
    end
end