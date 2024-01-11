
document.querySelectorAll('.js-reply-display').forEach((el) => {
    el.addEventListener('click', (ev) => {
        ev.preventDefault();
        if (window.getComputedStyle(el.nextElementSibling).display === 'block') {
            el.innerHTML = "&uarr;"
            el.nextElementSibling.style = 'display: none!important;';
        } else {
            el.innerHTML = "&darr;"
            el.nextElementSibling.style = 'display: block!important;';
        }
    })
});