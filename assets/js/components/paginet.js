let param = new URLSearchParams(document.location.search);
let pag = param.get('page');
if (!Number(pag)) {
    pag = 1
}


function moving_by_page() {
    $.ajax({
        url: `${API_URL}/Anime/${pag}`, //куда
        method: "get", // как
        dataType: "json", //тип посылки
        headers: {
            "Content-Type": "application/json"
        },
        data: {}, // что отправляете
        success: function (data) { // если запрос успешный
            print_paginet(data.paginate)
        },
        error: function (error) { // если запрос плохой
            console.log("Ошибка запроса на API")
            console.log(error)
        }
    })
}


moving_by_page()

function print_paginet(paginate) {
    let block = document.querySelector('.lists')
    block.innerHTML = ''
    if (block){
        let next = paginate.next ? `<a class="str" href="${SITE_URL}index.html?page=${paginate.next}">${paginate.next}</a>`: ""
        let cur = paginate.cur ? `<a class="str" href="href="${SITE_URL}index.html?page=${paginate.cur}">${paginate.cur}</a>`: ""
        let prev = paginate.prev ? `<a class="str" href="${SITE_URL}index.html?page=${paginate.prev}">${paginate.prev}</a>`: ""
        block.innerHTML = `${prev} ${cur} ${next}`

    }
}
