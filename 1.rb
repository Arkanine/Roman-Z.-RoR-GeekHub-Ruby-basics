sec = 1000000000

year = sec/60/60/24/365.to_f
year_v = year/4

second = sec - year_v*366*24*60*60

month_n = second/60/60/24/365 * 12.to_f
month = month_n % 12

days_n = second/60/60/24 % 365
mid = 365/12.to_f
day = days_n % mid

puts 'Age of the person is: ' + year.to_i.to_s + ' years, ' + month.to_i.to_s  + ' months and ' + day.to_i.to_s   + ' days.'
