const imageLinks = document.querySelectorAll('.imagen-link');

    // Agrega un evento de clic a cada enlace
    imageLinks.forEach((link) => {
        link.addEventListener('click', (event) => {
            event.preventDefault(); // Evita la navegación por defecto

            const pltInfo = link.getAttribute('data-info');

            // Muestra la alerta de SweetAlert
            Swal.fire({
                title: 'Texto de pltInfo',
                text: pltInfo,
                icon: 'info',
                confirmButtonText: 'Aceptar'
            });
        });
    });