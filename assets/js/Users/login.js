onlyGuest()
let login_form = document.querySelector('#login_form')


if (login_form) {
    login_form.onsubmit = function (e) {
        e.preventDefault()
        let valid = new ValidateForm().required(login_form.querySelectorAll('input.required'))
        if (valid.status) {
            let json_data = new ValidateForm().form_inpts_json_format(login_form.querySelectorAll('input'))

            login(json_data)
        } else {
            new ValidateForm().show_error_inpts(valid.errors)
        }
    }
}

function login(data) {
    $.ajax({
        url: `${API_URL}/Users/login`,
        dataType: 'json',
        method: "post",
        headers: {
            "Accept": "application/json; odata=verbose",
            "Content-Type": "application/json; odata=verbose"
        },
        data: JSON.stringify(data),
        success: function (data) {
            set_auth(data.token)
            redirect('public/profile.html')
            console.log(data)
        },
        error: function (err) {
            console.log(err)
        }
    })
}
