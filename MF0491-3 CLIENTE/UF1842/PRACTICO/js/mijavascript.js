
// Carga de los jugadores desde un archivo externo

document.querySelector('#boton').addEventListener('click', cargarjugadores);

function cargarjugadores(){

    const xhttp = new XMLHttpRequest();
    xhttp.open('GET', './json/jugadores.json', true);
    xhttp.send();
    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let datos = JSON.parse(this.responseText);
            let jugadores = document.querySelector("#jugadores");
            jugadores.innerHTML = "<div class='col-12 col-sm-10 text-center'><h1 class='titulomed my-5 text-light'>Equipo Mahou 5 Estrellas</h1></div><div class='col-12 col-sm-2'><img src='./img/mahou.png' class='img-fluid mt-3'></img>";
            for (let item of datos){
                jugadores.innerHTML += `
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-2 my-3">
                <div class="card" >
                    <img src="./img/${item.foto}" class="card-img-top" alt="${item.nombre}">
                    <div class="card-body">
                        <h6 class="card-title">${item.puesto}</h6>

                        <p class="card-text">${item.equipo}</p>
                        <a href="${item.datos}" target="_blank" class="btn btn-outline-danger">Ver</a>
                    </div>
                </div>
                </div>
                `
            }

        }
    }

}

// Parte del winamp

document.querySelector('#musica').addEventListener('click', cargarwinamp);

function cargarwinamp(){

const Webamp = window.Webamp;
        new Webamp({
           availableSkins:[
            {url: "./skins/Green-Dimension-V2.wsz", name:"Green Dimension V2" },
            {url: "./skins/AmigaPPC-dark.wsz", name:"AmigaPPC dark" },
            {url: "./skins/base-2.91.wsz", name:"base 2.91" },
            {url: "./skins/base-2.91-png.wsz", name:"base 2.91 png" },
            {url: "./skins/Internet-Archive.wsz", name:"Internet Archive" },
            {url: "./skins/MacOSXAqua1-5.wsz", name:"MacOSXAqua1-5" },
            {url: "./skins/Skinner_Atlas.wsz", name:"Skinner Atlas" },
            {url: "./skins/Sonic_Attitude.wsz", name:"Sonic Attitude" },
            {url: "./skins/TopazAmp1-2.wsz", name:"TopazAmp 1.2" },
            {url: "./skins/Vizor1-01.wsz", name:"Vizor 1.01" },
            {url: "./skins/XMMS-Turquoise.wsz", name:"XMMS Turquoise" },
            {url: "./skins/ZaxonRemake1-0.wsz", name:"ZaxonRemake 1.0" },
            {url: "./skins/Digitanium2.wsz", name:"Digitanium 2.0" },
            {url: "./skins/Digitanium3.wsz", name:"Digitanium 2.0" },
            {url: "./skins/Digitanium4.wsz", name:"Digitanium 3.0" },
            {url: "./skins/Nike_2005.wsz", name:"Nike 5.0"},
            {url: "./skins/MoonSilver.wsz", name:"Moon Silver"},
            {url: "./skins/Paradox.wsz", name:"Paradox"},
           
            ],

           initialTracks:[
          
           {url: "./himnos/albacete.ogg"},
           {url: "./himnos/Tenerife.ogg"},
           {url: "./himnos/laspalmas.ogg"}
           ],

            initialSkin: 
            {url: "./skins/Nike_2005.wsz"}
             
          
        }).renderWhenReady(document.getElementById('mireproductor'));

    }


// slider de fotos

var i = 1; 			// Comienzo
var images = [];	// Array que contiene la dirección de las imágenes


// Lista de imagenes
images[0] = "./img/1.jpg";  // Imagen inicial
images[1] = "./img/2.jpg";
images[2] = "./img/3.jpg";
images[3] = "./img/4.jpg";
images[4] = "./img/5.jpg";
images[5] = "./img/6.jpg";
images[6] = "./img/7.jpg";




// Cambio de imagen
function cambioImg() {
   
    document.slide.src = images[i];

    // Mira ver si el índice ha llegado al final
    if (i < images.length - 1) {
        // añade 1 al contador
        i++;
    } else {
        // Vuelve a cero
        i = 0;
    }

  
}
// Cambia de foto al presionar el boton

document.querySelector('#imagenes').addEventListener('click', cambioImg);

