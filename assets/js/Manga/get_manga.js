function get_manga() {
    $.ajax({
        url: `${API_URL}/manga`, //куда
        method: "get", // как
        dataType: "json", //тип посылки,
        data: {}, // что отправляете
        success: function (data) { // если запрос успешный
            print_Manga(data)
        },
        error: function (error) { // если запрос плохой
            console.log("Ошибка запроса на API")
            console.log(error)
        }
    })
}
get_manga()

function print_Manga(manga) {
    block_manga = document.querySelector('.containermang')

    block_manga.innerHTML = ''

    manga.forEach(mang => {
        block_manga.innerHTML +=
            `
        <div class="blockmang">
            <img src="${mang.img}" alt="">
            <h4>${mang.title}</h4>
            <p>${mang.Publisher}</p>
            <a href="${mang.manga}">
                Читать
            </a>
        </div>
        `
    });
}