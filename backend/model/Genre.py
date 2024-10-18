from ..DB import DB

class Genre:
    def __init__(self) -> None:
        self.__db = DB()

    def get_all(self) -> dict:
        try:
            cursor = self.__db.getCursor()
            get_genres = ("SELECT * FROM `genre`")
            cursor.execute(get_genres)
            genres = cursor.fetchall()
            self.__db.closeConnect()
        except:
            print('Ошибка при SQL запросе [!]')
            return False
        return genres
    
    def get_anime_by_id(self, id):
        try:
            cursor = self.__db.getCursor()
            get_anime = ("SELECT a.*, DATE_FORMAT(a.`date`, '%Y-%m-%d') as date FROM `id_AG` i JOIN `anime` a WHERE i.`id_anime` = a.`id` AND i.`id_genre` = %(id_genre)s ")
            cursor.execute(get_anime, {
                'id_genre':id
            })
            anime = cursor.fetchall()
            self.__db.closeConnect()
        except:
            print('Ошибка при SQL запросе [!]')
            return False
        return anime
    


