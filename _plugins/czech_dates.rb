module Jekyll::CzechDates
    DAYS = {
        "Monday" => "Pondělí",
        "Tuesday" => "Úterý",
        "Wednesday" => "Středa",
        "Thursday" => "Čtvrtek",
        "Friday" => "Pátek",
        "Saturday" => "Sobota",
        "Sunday" => "Neděle"
    }

    def czechDayDate(engDay)
        day = DAYS[engDay]
    end
end

Liquid::Template.register_filter(Jekyll::CzechDates)
