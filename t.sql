update data
inner join (
    select country, avg(daily_vaccinations) as avgdaily_vaccinations
    from data
    group by country
) b on data.country = b.country
set daily_vaccinations = b.avgdaily_vaccinations
where daily_vaccinations is null;
