let params = new URLSearchParams(document.location.search);
let id_cat = params.get('id');

getAnimeByCategory(id_cat, "category__anime__block")

getAll("genres__block")