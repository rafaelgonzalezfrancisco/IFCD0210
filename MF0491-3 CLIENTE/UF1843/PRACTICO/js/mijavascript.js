// Inicializa todo el javascript de Materialize


document.addEventListener('DOMContentLoaded', function () {
    M.AutoInit();
});


// Boton de accesibilidad inicializarlo de materialize

 document.addEventListener('DOMContentLoaded', function () {
     var elems = document.querySelectorAll('.fixed-action-btn');
     var instances = M.FloatingActionButton.init(elems, {
         direction: 'left',
         hoverEnabled: true
     });
 });


 // Botones de accesibilidad

document.querySelector('#aumentar').addEventListener('click', aumentarfuente);

function aumentarfuente(){
    var x = document.querySelector("html");
    x.style.fontSize = "1.4em";
}

document.querySelector('#reducir').addEventListener('click', reducirfuente);

function reducirfuente() {
    var x = document.querySelector("html");
    x.style.fontSize = "15px";
}

document.querySelector('#visibilidad').addEventListener('click', visibilidadfuente);

function visibilidadfuente() {
    var x = document.querySelector("html");
    x.style.color = "yellow";
    x.style.backgroundColor = "rgba(0, 0, 0, 0.8)";


    var y = document.querySelectorAll(".card");
    var i;
    for(i=0;i<y.length;i++){
        y[i].style.backgroundColor = "rgba(0, 0, 0, 0.9)";
    }

    var y = document.querySelectorAll(".card-content>p");
    var i;
    for(i=0;i<y.length;i++){
        y[i].style.color = "yellow";
    }


    var y = document.querySelectorAll(".card-reveal");
    var i;
    for (i = 0; i < y.length; i++) {
        y[i].style.backgroundColor = "rgba(0, 0, 0, 0.9)";
    }


    var y = document.querySelectorAll("ul>li.collection-item");
    var i;
    for (i = 0; i < y.length; i++) {
        y[i].style.backgroundColor = "rgba(0, 0, 0, 0.9)";
       
    }

    var y = document.querySelectorAll(".coco");
    var i;
    for (i = 0; i < y.length; i++) {
        y[i].style.backgroundColor = "rgba(0, 0, 0, 0.3)";
    }

    var y = document.querySelectorAll(".flecha");
    var i;
    for (i = 0; i < y.length; i++) {
        y[i].style.color = "yellow";
    }
   
}


document.querySelector('#mayuscula').addEventListener('click', mayusculafuente);

function mayusculafuente(){
       var x = document.querySelectorAll("p");
       var i;
       var may = HTMLElement.innerText;
       for(i=0;i<x.length;i++){
          x[i].innerHTML = x[i].innerText.toUpperCase();
       }
}










 
