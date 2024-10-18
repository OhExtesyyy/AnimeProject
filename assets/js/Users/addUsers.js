onlyGuest()


addUserForm.onsubmit = function (event) {
    event.preventDefault()



    let reg = {
        'login': login_input.value,
        'password': password_input.value,
        'email': email_input.value,
    }
    if (password_input.value === repeat_input.value) {
        $.ajax({
            url: `${API_URL}/Users`,
            dataType: 'json',
            method: "post",
            headers: {
                "Accept": "application/json; odata=verbose",
                "Content-Type": "application/json; odata=verbose"
            },
            data: JSON.stringify(reg),
            success: function (data) {
                addUserForm.reset() //очищаем форму
                alert('Вы успешно зарегестрировались')
                document.location.href = `${SITE_URL}public/login.html`
            },
            error: function (err) {
                alert(err.responseJSON)
                console.log("Ошибки")
            }
        })


    }
    else {
        alert("Пароли не совпадают")
    }
}
