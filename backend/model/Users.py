from ..DB import DB
import hashlib
from ..helpers.Validate import Validate

class Users:
    def __init__(self) -> None:
        self.__db = DB()

    def get_users(self) -> dict:
        try:
            cursor = self.__db.getCursor()
            get_users = ("SELECT * FROM `users`")
            cursor.execute(get_users)
            users = cursor.fetchall()
            self.__db.closeConnect()
        except:
            print('Ошибка при SQL запросе [!]')
            return False
        return users
    
    def set_user(self,data):
        try:
            password_hash = hashlib.md5(data["password"].encode())
            password = password_hash.hexdigest()

            cursor = self.__db.getCursor()
            set_user = ("INSERT INTO `users`(`login`, `password`, `email`) VALUES (%(login)s, %(password)s, %(email)s)")
            cursor.execute(set_user, {
                "login": data["login"],
                "password": password,
                "email": data["email"]
            })
            countRow = cursor.rowcount
            self.__db.commitDB()
            self.__db.closeConnect()
        except Exception as e:
            print('Ошибка при SQL запросе [!] ')
            return {
                'status': False,
                'code': e.args[0],
                'message':e.args[1]
            }
        return {
            'status':True,
            'count':countRow
        }
    
    def delete_user(self,id_user):
        try:
            cursor = self.__db.getCursor()
            delete_user = ("DELETE FROM `users` WHERE users.`id` = %(id_user)s")
            cursor.execute(delete_user,{
                'id_user': id_user,
            })
            countRow = cursor.rowcount
            self.__db.commitDB()
            self.__db.closeConnect()
        except:
            print('Ошибка при SQL запросе [!]')
            return False
        return countRow


    def login(self, data):
        validate = Validate.validate_required(data, ['login', 'password'])
        if not validate['status']:
            return validate
        password_hash = hashlib.md5(data["password"].encode())
        password = password_hash.hexdigest()

        try:
            cursor = self.__db.getCursor()
            delete_user = ("SELECT `id` FROM `users` WHERE `login`=%(login)s AND `password` = %(password)s ")
            cursor.execute(delete_user,{
                'login': data['login'],
                'password': password,
            })
            res = cursor.fetchone()
            self.__db.commitDB()
            self.__db.closeConnect()
        except Exception as e:
            print('Ошибка при SQL запросе [!]')
            return {
                "status":False,
                "message":"Что-то пошло не так",
                "exception" : e.args[1]
            }
        
        if (res):
            is_token = self.set_token(res['id'])
            if is_token['status']:
                return {
                    'status': True,
                    'token': is_token['token']
                }
            else:
                return {
                    'status':False,
                    "message":"Не удалось авторизоваться[Token Error]"
                }
        else:
            return {
                'status': False,
                "message": "Такого пользователя не существует",
            }   
    
    def set_token(self, id):
        token = hashlib.md5(str(id).encode())
        token = token.hexdigest()
        try:
            cursor = self.__db.getCursor()
            delete_user = ("UPDATE `users` SET `token` = %(token)s, `date_last_auth` = NOW() WHERE `id` = %(id)s ")
            cursor.execute(delete_user,{
                'id': id,
                'token': token,
            })
            countRow = cursor.rowcount
            self.__db.commitDB()
            self.__db.closeConnect()
        except Exception as e:
            print('Ошибка при SQL запросе [!]', e.args[1])
            return {
                'status':False,
                'exception':e.args[1]
            }
        
        return {
            'status': True if countRow else False,
            'token': token if countRow else None
        }
    
    def get_data_user(self,password):
        try:
            cursor = self.__db.getCursor()
            data_user = ('SELECT * FROM `users` u WHERE u.`password` = %(password)s')
            cursor.execute(data_user,{
                "password":password
            })
            data = cursor.fetchone()
            self.__db.closeConnect()
        except Exception as e:
            print('Ошибка в sql запросе', e.args[1])
            return {
                'status': False
            }
        return data

    
        

    


