document.addEventListener('DOMContentLoaded', () => {
    const toggle = document.querySelector('.dropdown-toggle');
    const menu = document.querySelector('.dropdown-menu');

    toggle.addEventListener('click', () => {
        menu.classList.toggle('show-dropdown');
    });

    document.addEventListener('click', e => {
        if (!toggle.contains(e.target) && !menu.contains(e.target)) {
            menu.classList.remove('show-dropdown');
        }
    });
});

