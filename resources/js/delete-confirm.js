document.addEventListener('DOMContentLoaded', function () {
    const deleteForms = document.querySelectorAll('.delete-form');

    deleteForms.forEach(form => {
        form.addEventListener('submit', function (e) {
            const confirmed = confirm('¿ Estas seguro de que quieres eliminar este elemento?');
            if (!confirmed) {
                e.preventDefault();
            }
        });
    });
});
