from flask import Flask , jsonify , request
from flask_cors import CORS
from backend.model.Anime import Anime 
from backend.model.Users import Users
from backend.model.Genre import Genre
from backend.helpers.Paginate import Paginate
from backend.model.New import New
from backend.model.Manga import Manga

app = Flask(__name__)

CORS(app)

@app.route('/Anime/<int:page>', methods=['GET'])
def get_anime(page):
    anime = Anime()
    count_all = len(anime.get_all_anime())
    paginate = Paginate()
    paginate = paginate.get_pages(count_all, page, 12)
    all_anime = anime.get_all_by_page(page)
    return jsonify({
        'anime':all_anime,
        'paginate':paginate
    })


@app.route('/Anime',methods=['POST'])
def set_anime():
    data = request.get_json()
    anime = Anime()
    set_anime = anime.set_anime(data)
    return jsonify(set_anime)


@app.route('/Users', methods=['GET'])
def get_users():
    users = Users()
    all_users = users.get_users()
    return jsonify(all_users)

@app.route("/Users/Profile", methods=['GET'])
def get_data(data):
    user=Users()
    data_user = user.get_data_user(data['password'])
    return jsonify(data_user)

@app.route('/Users',methods=['POST'])
def set_user():
    data = request.get_json()
    user = Users()
    set_user = user.set_user(data)
    if set_user['status']:
        return jsonify(set_user['count']), 200
    elif set_user['code'] == 1062:
        return jsonify("Пользователь с таким логином уже существует"), 400
    else:
        return jsonify(set_user['message']), 400

@app.route('/Users',methods=['DELETE'])
def delete_user():
    data = request.get_json()
    user = Users()
    delete_user = user.delete_user(data['id_user'])
    return jsonify(delete_user)

@app.route('/Users/login', methods=['POST'])
def login_user():
    data = request.get_json()
    user = Users()
    login_user = user.login(data)
    return jsonify(login_user), (200 if login_user['status'] else 400)

@app.route('/Anime/<int:id_anime>', methods=['GET'])
def get_anime_by_id(id_anime):
    anime = Anime()
    anime = anime.get_anime_by_id(id_anime)
    return jsonify(anime)

@app.route('/genres', methods=['GET'])
def get_genres():
    genre = Genre()
    genres = genre.get_all()
    return jsonify(genres)

@app.route('/genres/<int:id_category>', methods=['GET'])
def get_genres_by_id_category(id_category):
    genre = Genre()
    genres = genre.get_anime_by_id(id_category)
    return jsonify(genres)

@app.route('/new', methods=['GET'])
def get_new():
    new = New()
    get_new = new.get_all_new()
    return jsonify(get_new)


@app.route('/new',methods=['POST'])
def set_new_post():
    data = request.get_json()
    new = New()
    set_new = new.set_new(data)
    return jsonify(set_new)


@app.route('/manga', methods=['GET'])
def get_manga():
    manga = Manga()
    get_manga = manga.get_manga()
    return jsonify(get_manga)





if __name__ == '__main__':
    app.run()

