function out = isOfAge(year, month, day)
    thisDate = datevec(now);
    thisYear = thisDate(1); thisMonth = thisDate(2); thisDay = thisDate(3);
    
    yearDiff = thisYear - year;
    
    if (yearDiff > 18) || (yearDiff == 18 && thisMonth >= month && thisDay >= day)
        out = true;
    else
        out = false;
    end
end