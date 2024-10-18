from ..DB import DB


class Manga:
    def __init__(self) -> None:
        self.__db = DB()

    
    def get_manga(self):
        try:
            cursor = self.__db.getCursor()
            get_mang = ("SELECT * FROM `manga`")
            cursor.execute(get_mang)
            manga = cursor.fetchall()
            self.__db.closeConnect()
        except:
            print('Ошибка при SQL запросе [!]')
            return False
        return manga

