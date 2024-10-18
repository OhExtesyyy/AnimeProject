
function set_auth(token) {
    console.log("set")
    localStorage.setItem('auth', token)
}

function get_auth() {
    return localStorage.getItem('auth')
}

function redirect(path) {
    document.location.href = `${SITE_URL}${path}`
}

function onlyGuest() {
    get_auth() ? redirect('public/profile.html') : ""
}

function onlyUser() {
    get_auth() ? "" : redirect('index.html')
}