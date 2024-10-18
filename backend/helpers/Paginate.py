import math

class Paginate:
    def get_pages(self, count_items, cur_page, limit):
        count_pages = math.ceil(count_items/limit)
        prev_page = False if cur_page == 1 else cur_page -  1
        next_page = False if cur_page == count_pages else cur_page + 1
        return {
            "prev":prev_page,
            'cur':cur_page,
            "next":next_page,
        }


