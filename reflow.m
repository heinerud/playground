function reflow
   main('inflow.txt');
end

function string = main(file)
    file = fopen(file);
    string = textscan(file, '%s');
    string = string{:};
    line = [];
    for i=1:length(string)
        word = string{i};
        if length([line word]) <= 40
            line = [line word ' '];
        else
            
            disp(line)
            line = [word ' '];
        end
    end
end