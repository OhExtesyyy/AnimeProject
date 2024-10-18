
function get_new(){
    $.ajax({
        url: `${API_URL}/new`, //куда
        method: "get", // как
        dataType: "json", //тип посылки
        data: {}, // что отправляете
        success: function (data) { // если запрос успешный
            console.log(data)
            print_Anime(data)
        },
        error: function (error) { // если запрос плохой
            console.log("Ошибка запроса на API")
            console.log(error)
        }
    })
}


get_new()

function print_Anime(new_anime) {

    block_new.innerHTML = ''
    new_anime.forEach(news => {
        block_new.innerHTML += 
        `
            <div class="new_anime_left">
                <h3 class="logo_new">${news.title}</h3>
                <div class="poshion_new_block">
                    <p class="text_new_description">${news.explanation}</p>
                    <img class="img_new" src="${news.img}" alt="">
                </div>
            </div>
        `
    });
}