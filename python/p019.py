from datetime import date, timedelta

d1 = date(1901, 1, 1)
d2 = date(2000, 12, 2)
count = 0

while 1:
    if d1 == d2:
        break

    if d1.day == 1 and d1.weekday() == 6:
        count += 1
    
    d1 += timedelta(days=1)


print count
