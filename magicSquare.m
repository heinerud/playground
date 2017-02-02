function magicSquare
    run([8, 1, 6, 3, 5, 7, 4, 9, 2])
    run([2, 7, 6, 9, 5, 1, 4, 3, 8])
    run([3, 5, 7, 8, 1, 6, 4, 9, 2])
    run([8, 1, 6, 7, 5, 3, 4, 9, 2])
end

function out = run(in)
    in = reshape(in, 3, [])';
    rowsCheck = ~ismember(0, sum(in, 1) == 15);
    colsCheck = ~ismember(0, sum(in, 2) == 15);
    diagCheck = in(3) + in(5) + in(7) == 15 && in(1) + in(5) + in(9) == 15;
    if rowsCheck && colsCheck && diagCheck
        out = true;
    else
        out = false;
    end
end