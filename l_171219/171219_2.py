time = int(input('введите время  в секундах:  '))
sec = (time % 60)
hour = (time // 60) // 60
minut = ((time // 60) % 60)

print(f"{hour}:{minut}:{sec}")

