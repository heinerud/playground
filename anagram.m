function anagram
    run('"wisdom" ? "mid sow"')
    run('"Seth Rogan" ? "Gathers No"')
    run('"Reddit" ? "Eat Dirt"')
    run('"Schoolmaster" ? "The classroom"')
    run('"Astronomers" ? "Moon starer"')
    run('"Vacation Times" ? "I''m Not as Active"')
    run('"Dormitory" ? "Dirty Rooms"')
end

function run(original)
    strings = regexprep(original, '[^?\w]', '');
    strings = lower(strings);
    strings = strsplit(strings, '?');
    strings = sort(strings(:));
    isAnagram = strcmp(strings{1}, strings{2});
    
    if isAnagram
        answer = 'is an anagram of';
    else
        answer = 'is NOT an anagram of';
    end
    disp(strrep(original, '?', answer))
end