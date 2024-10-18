let params = new URLSearchParams(document.location.search);
let page = params.get('page');
if (!Number(page)) {
    page = 1
}

function get_animes() {
    $.ajax({
        url: `${API_URL}/Anime/${page}`, //куда
        method: "get", // как
        dataType: "json", //тип посылки,
        headers: {
            "Content-Type": "application/json"
        },
        data: {}, // что отправляете
        success: function (data) { // если запрос успешный
            print_Anime(data.anime)
        },
        error: function (error) { // если запрос плохой
            console.log("Ошибка запроса на API")
            console.log(error)
        }
    })
}

get_animes()

function print_Anime(Anime) {

    Anime_html.innerHTML = ''
    Anime.forEach(anime => {
        Anime_html.innerHTML +=
            `
            <div class="anime">
                <img src="${anime.img}"alt="">
                <div>
                    <h1>${anime.name}</h1>
                    <p>${anime.date}</p>
                    <h2><a target="_blank" href="${anime.movie_trailer}">Смотреть трейлер</a></h2>
                </div>
            </div>
        `

    });
}










