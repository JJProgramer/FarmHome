// Obtener las áreas de la imagen
const areas = document.querySelectorAll('area');

areas.forEach(area => area.addEventListener('click', function () {
      // Obtener el texto de la alerta
    const name = area.getAttribute('alt');
    const alertText = area.getAttribute('data-alert');

    Swal.fire({
        title: name,
        text: alertText,
        icon: 'info',
        confirmButtonText: 'OK',
        footer: '<span class="color">Aprende con FarmHome</span>',
        padding: '10px',
        //background:'',
        backdrop: 'true'
    })
}));




