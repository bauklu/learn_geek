#Пользователь вводит месяц в виде целого числа от 1 до 12. Сообщить к какому времени года относится месяц
# (зима, весна, лето, осень). Напишите решения через list и через dict.

mon = int(input('введите месяц в виде числа: '))

d_season = {1:'январь', 2:'февраль', 3:'март', 4:'апрель', 5:'май', 6:'июнь', 7:'июль', 8:'август', 9:'сентябрь', 10:'октябрь', 11:'ноябрь', 12:'декабрь'}
print(d_season.get(mon))

d_season = list(d_season.values())
print(d_season[mon - 1])
