a_list =[]
for i in range(1, 4):
    a_dict = {'наименование':'', 'цена':'', 'количество':'', 'единица измерения':''}
    nom = input('введите наименование товара: ')
    a_dict['наименование'] = nom
    price = int(input('введите цену: '))
    a_dict['цена'] = price
    quon = int(input('введите количество: '))
    a_dict['количество'] = quon
    unit = input('введите единицу измерения : ')
    a_dict['единица измерения'] = unit

    a_tuple = (i, a_dict)
    a_list.append(a_tuple)
print('список кортежей: ', a_list)