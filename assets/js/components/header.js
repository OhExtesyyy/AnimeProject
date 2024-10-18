function header(URL) {
    let header__block = document.querySelector('#header__block')
    if (header__block) {
        header__block.innerHTML =
            `
            <header class="header">
        <h1><a class="img_header" href="${URL}index.html">ANIMEO</a></h1>
        <nav class = "nav_header">
            <ul class="header_menu_list">
                <li class="header_menu_link">
                    <a href="${URL}index.html">Новинки</a>
                </li>
                <li class="header_menu_link">
                    <a href="${URL}public/new.html">Новости</a>
                </li>
                <li class="header_menu_link">
                    <a href="${URL}public/manga.html">Манга</a>
                </li>
                <li class="header_menu_link">
                    <button id="kategor" class="header_btn">Категории</button>
                </li>
            </ul>
            
            </nav>
            <div id="list" class="menu disp">
                <ul id="genres__block"></ul>
            </div>
        <div class="header_actions">
            ${get_auth() ? `
                <a href="${URL}public/profile.html">
                <h1 class="img_registr">Профиль</h1>
                </a>
                ` :
                `
                <a href="${URL}public/register.html">
                    <h1 class="img_registr">Регистрация</h1>
                </a>
                `
            }
        </div>
    </header>
        `
    }
}


header(SITE_URL)


const kategor = document.querySelector('#kategor');
const list = document.querySelector('#list');

kategor.addEventListener('click', () => {
    if (list.classList.contains('disp') == true) {
        list.classList.remove('disp');
        kategor.classList.add('header_btn_active')
    }
    else {
        list.classList.add('disp');
        kategor.classList.remove('header_btn_active')
    }
})






