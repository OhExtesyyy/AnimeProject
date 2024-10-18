
function getAnimeByCategory(id, block_print) {
    $.ajax({
        url: `${API_URL}/genres/${id}`,
        method: "get", // как
        dataType: "json", //тип посылки
        data: {}, // что отправляете
        success: function (data) { // если запрос успешный
            console.log(data)
            print_anime(data, block_print)
        },
        error: function (error) { // если запрос плохой
            console.log("Ошибка запроса на API")
            console.log(error)
        }
    })
}

function print_anime(data, block_print) {
    let block = document.querySelector(`#${block_print}`)
    if (block) {
        block.innerHTML = ''
        if (data.length) {
            data.forEach(anime => {
                block.innerHTML +=
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
        else {
            block.innerHTML += `<p>К сожалению аниме в данной категории нет</p>`
        }
    }
}