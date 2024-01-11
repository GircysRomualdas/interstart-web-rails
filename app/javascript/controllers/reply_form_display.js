

document.querySelectorAll('.js-reply-form-display').forEach((el) => {
    el.addEventListener('click', (ev) => {
        ev.preventDefault();
        if (window.getComputedStyle(el.nextElementSibling).display === 'block') {
            el.nextElementSibling.style = 'display: none!important;';
        } else {
            el.nextElementSibling.style = 'display: block!important;';
        }
    })
});