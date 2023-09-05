
const cloud = document.getElementById("cloud");
const barraLateral = document.querySelector(".barra-lateral");
const spans = document.querySelectorAll("span");
const palanca = document.querySelector(".switch");
const circulo = document.querySelector(".circulo");
const menu = document.querySelector(".menu");
const main = document.querySelector("main");

menu.addEventListener("click", () => {
    barraLateral.classList.toggle("max-barra-lateral");
    if (barraLateral.classList.contains("max-barra-lateral")) {
        menu.children[0].style.display = "none";
        menu.children[1].style.display = "block";
    }
    else {
        menu.children[0].style.display = "block";
        menu.children[1].style.display = "none";
    }
    if (window.innerWidth <= 320) {
        barraLateral.classList.add("mini-barra-lateral");
        main.classList.add("min-main");
        spans.forEach((span) => {
            span.classList.add("oculto");
        })
    }
});

palanca.addEventListener("click", () => {
    let body = document.body;
    body.classList.toggle("dark-mode");
    body.classList.toggle("");
    circulo.classList.toggle("prendido");
});

cloud.addEventListener("click", () => {
    barraLateral.classList.toggle("mini-barra-lateral");
    main.classList.toggle("min-main");
    spans.forEach((span) => {
        span.classList.toggle("oculto");
    });
});


$(function () {
    //selecionamos todos <a> con clase page-scroll y le asignamo0s el evento click
    $('a.page-scroll').bind('click', function (event) {
        var $anchor = $(this);//crea la variable anchor que almacena el evento click que se realiza en <A>
        $('html, body').stop().animate({//aplicamos la animacion de scroll al dar click en los <a< del nav
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');//definimos la velocidad en milisegundos de la animacion 
        event.preventDefault();//evita que al dar click se dirija o recargue la pagina, al contrario inicia el scroll suave 
    });
});

// resalta en verde el nav y lo fija cuando el scroll baje hasta la seccion clickeada
$('body').scrollspy({
    target: '.navbar-fixed-top'
});

//  se encarga de cerrar el menú desplegable de la barra de navegación en dispositivos móviles después de que se haya hecho clic
$('.navbar-collapse ul li a').click(function () {
    $('.navbar-toggle:visible').click();
});

// ########################################

//CARRUSEL

