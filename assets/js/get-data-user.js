function get_data_user(data){
    $.ajax({
        url: `${API_URL}/Users`, //куда
        method: "get", // как
        dataType: "json", //тип посылки,
        headers: {
            "Content-Type": "application/json"
        },
        data: {}, // что отправляете
        success: function (data) { // если запрос успешный
            
        },
        error: function (error) { // если запрос плохой
            console.log("Ошибка запроса на API")
            console.log(error)
        }
    })
}