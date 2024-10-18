function get_anime_by_id(id){
    let anime = false;
    $.ajax({
        url: `${API_URL}/Anime/` + String(id), //куда
        method: "get", // как
        dataType: "json", //тип посылки
        data: {}, // что отправляете
        async:false,
        success: function (data) { // если запрос успешный
            anime = data
        },
        error: function (error) { // если запрос плохой
            console.log("Ошибка запроса на API")
            console.log(error)
        }
    })
    return anime
}
