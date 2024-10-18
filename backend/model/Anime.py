from ..DB import DB

class Anime:
    def __init__(self) -> None:
        self.__db = DB()
        self.anime_count = 12
    
    def get_all_anime(self) -> dict:
        try:
            cursor = self.__db.getCursor()
            get_anime = ("SELECT *, DATE_FORMAT(`date`, '%Y-%m-%d') as date FROM `anime`")
            cursor.execute(get_anime)
            anime = cursor.fetchall()
            self.__db.closeConnect()
        except:
            print('Произошла ошибка при SQL запросе [!]')
            return False
        return anime

    def get_all_by_page(self, page:int) -> dict:
        offset = (page - 1) * self.anime_count
        try:
            cursor = self.__db.getCursor()
            get_anime = ("SELECT *, DATE_FORMAT(`date`, '%Y-%m-%d') as date FROM `anime` LIMIT %(limit)s OFFSET %(offset)s")
            cursor.execute(get_anime,{
                "limit":self.anime_count,
                'offset':offset
            })
            anime = cursor.fetchall()
            self.__db.closeConnect()
        except:
            print('Произошла ошибка при SQL запросе [!]')
            return False
        return anime
    
    def set_anime(self,data):
        try:
            cursor = self.__db.getCursor()
            set_anime = ("INSERT INTO `anime` (`img`, `name`, `date`, `movie_trailer`) VALUES (%(img)s, %(name)s, %(date)s, %(movie_trailer)s)")
            cursor.execute(set_anime,{
                'img': data['img'],
                'name': data['name'],
                'date': data['date'],
                'movie_trailer': data['movie_trailer']
            })
            countRow = cursor.rowcount
            self.__db.commitDB()
            self.__db.closeConnect()
        except:
            print('Произошла ошибка при SQL запросе [!]')
            return False
        return countRow
    

    def get_anime_by_id(self,id):
        try:
            cursor = self.__db.getCursor()
            get_anime = ("SELECT *, DATE_FORMAT(`date`, '%Y-%m-%d') as date FROM `anime` a WHERE a.`id` = %(id)s")
            cursor.execute(get_anime,{
                'id':id
            })
            anime = cursor.fetchall()
            self.__db.closeConnect()
        except:
            print('Произошла ошибка при SQL запросе [!]')
            return False
        return anime
    








    