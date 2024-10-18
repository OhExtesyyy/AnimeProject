from ..DB import DB


class New:

    def __init__(self) -> None:
        self.__db = DB()


    def get_all_new(self) -> dict:
        try:
            cursor = self.__db.getCursor()
            get_new = ("SELECT * FROM `new`")
            cursor.execute(get_new)
            new = cursor.fetchall()
            self.__db.closeConnect()
        except:
            print('Произошла ошибка при SQL запросе [!]')
            return False
        return new
    
    def set_new(self,data):
        try:
            cursor = self.__db.getCursor()
            set_new = ("INSERT INTO `new` (`title`, `explanation`, `img`) VALUES (%(title)s, %(explanation)s, %(img)s)")
            cursor.execute(set_new,{
                'title': data['title'],
                'explanation': data['explanation'],
                'img': data['img']
            })
            countRow = cursor.rowcount
            self.__db.commitDB()
            self.__db.closeConnect()
        except:
            print('Произошла ошибка при SQL запросе [!]')
            return False
        return countRow