
class Validate:
    def validate_required(data:dict, keys:list):
        errors = []
        for key in keys:
            if not data.get(key, False):
                errors.append(key)

        if len(errors) > 0:
            return {
                'status':False,
                'errors':errors,
                'message':"Введены не все данные"
            }
        
        return {
            'status':True
        }