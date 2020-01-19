#Создать (не программно) текстовый файл со следующим содержимым:
#One — 1
#Two — 2
#Three — 3
#Four — 4
#Необходимо написать программу, открывающую файл на чтение и считывающую построчно данные.
# При этом английские числительные должны заменяться на русские. Новый блок строк должен записываться
# в новый текстовый файл
#dic = {'one': 'один', 'two': 'два', 'three': 'три', 'four': 'четыре'}
writing = open("r_numb.txt", "w", encoding="utf-8-sig")
with open ("numbers.txt", "r", encoding="utf-8-sig") as reading:
    for line in reading:
        nums = line.split()
        if nums[0] == "One":
            nums[0] = "один"
        elif nums[0] == 'Two':
            nums[0] = 'два'
        elif nums[0] == 'Three':
            nums[0] = 'три'
        else:
            nums[0] = 'четыре'
        my_string = ''.join(nums)
        print(my_string)
        print(my_string, file=writing)
writing.close()