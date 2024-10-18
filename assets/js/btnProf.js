let btn = document.querySelector('.prof_btn')

btn.addEventListener('click', () => {
    localStorage.clear()
    window.location.href = `${SITE_URL}index.html`
})