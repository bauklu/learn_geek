from abc import ABC, abstractmethod

class Clothes(ABC):
    @abstractmethod
    def my_coat(self):
        pass
    @abstractmethod
    def my_suit(self):
        pass

class Coat(Clothes):
    def __init___(self, v, h):
        self.v = v
        self.h = h
    def my_coat(self):
        print(self.v / 6.5 + 0.5)
    def my_suit(self):
        print(2 * self.h + 0.3)

class Suit(Clothes):
    def my_coat(self):
        print('Ура')
    def my_suit(self):
        print('Хорошо')

ms = Suit()
ms.my_suit()
ms.my_coat()

mc = Coat()
#mc.my_coat(52)
#mc.my_suit()




