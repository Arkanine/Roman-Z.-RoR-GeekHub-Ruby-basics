sec = 1000000000

year = sec/60/60/24/365.to_f                # всего год
year_v = year/4                             # високосных
        
second = sec - year_v*366*24*60*60          # сколько секунд в НЕвисокосных годах

month_n = second/60/60/24/365 * 12.to_f     # сколько месяцев всего 
month = month_n % 12                        # остача

days_n = second/60/60/24 % 365              # дней всего
mid = 365/12.to_f                           # среднее арифметическое месяцев
day = days_n % mid                          # остача

puts 'Age of the person is: ' + year.to_i.to_s + ' years, ' + month.to_i.to_s  + ' months and ' + day.to_i.to_s   + ' days.'
