
function getAll(block_print) {
    $.ajax({
        url: `${API_URL}/genres`,
        method: "get", // как
        dataType: "json", //тип посылки
        data: {}, // что отправляете
        success: function (data) { // если запрос успешный
            print__genres(data, block_print)
        },
        error: function (error) { // если запрос плохой
            console.log("Ошибка запроса на API")
            console.log(error)
        }
    })
}



function print__genres(genres, block_print) {
    let block = document.querySelector(`#${block_print}`)
    if (block_print) {
        block.innerHTML = ""
        genres.forEach(genre => {
            block.innerHTML +=
                `
                <li>
                    <a href="${SITE_URL}/public/category.html?id=${genre.id}" class="btn_list"><h3 class='style_genres'>${genre.name}</h3></a>
                </li>
            `
        });
    }
}