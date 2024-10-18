


class ValidateForm {

    required(inpts) {
        let errors = []
        inpts.forEach(inp => {
            if (inp.value.length == 0) {
                errors.push(inp)
            }
        });
        return {
            'status': errors.length ? false : true,
            'errors': errors
        }
    }

    show_error_inpts(inpts) {
        inpts.forEach(inp => {
            inp.style.border = "1px solid red"
        });
    }

    form_inpts_json_format(inpts) {
        let json_fromat = {}
        inpts.forEach(inp => {
            if (inp.name) {
                json_fromat[inp.name] = inp.value
            }
        });
        return json_fromat
    }



}