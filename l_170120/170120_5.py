#Создать (программно) текстовый файл, записать в него программно набор чисел, разделенных пробелами.
# Программа должна подсчитывать сумму чисел в файле и выводить ее на экран
summa = 0
with open('nset', 'w', ) as a:
     a.write('12 85 41 37 8 15 6 72')

with open('nset', 'r') as b:
    line = b.read()
    nums = line.split()
    for num in nums:
        summa = summa + int(num)
print(summa)





