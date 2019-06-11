<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">


<html>
<!--parte del head-->
<head>
<title>Equipos de Futbol</title>
<meta name="viewport" content="width=device-width, user-scalable=no"></meta>
<link rel="stylesheet" href="./css/bootstrap.css"/>
</head>
<body>
 
<!--Parte del header-->

<header>
	<div class="container mt-4 mb-5">
	<img src="./img/logo.png" class="img-fluid" alt="Logo Liga 123"></img>
	</div>
	<h1 class="text-center mt-4">Equipos</h1>
</header>

<!--Parte de los enlaces nav-->

<nav class="justify-content-center">
		<ul class="nav justify-content-center">
		<li class="nav-item">
			<a class="nav-link btn btn-danger  m-1 mb-5" href="#tenerife">CD Tenerife</a>
		</li>
		<li class="nav-item">
			<a class="nav-link btn btn-danger m-1 mb-5" href="#laspalmas">UD Las Palmas</a>
		</li>
		<li class="nav-item">
			<a class="nav-link btn btn-danger  m-1 mb-5" href="#albacete">Albacete SAD</a>
		</li>
		</ul>
</nav>


<!--Parte de los datos del equipo-->

<section>
<a name="tenerife"></a>
<div class="container-fluid bg-secondary">
<xsl:for-each select="/equiposdefutbol/equipo[@nomequi='CD Tenerife']">
   <div class="card mb-3 bg-secondary">
       <div class="row no-gutters">
           <div class="col-md-2">
				<img src="./img/tenerife/escudotenerife.png" class="img-fluid" alt="escudo CD Tenerife"></img>
            </div>
			<div class="col-md-4">
			      <div class="card-body">
					<h2 class="card-tittle text-light mb-5"><xsl:value-of select="@nomequi"/></h2>
					<h4 class="card-text text-light" >Ciudad: <xsl:value-of select="ciudad"/></h4>
					<h4 class="card-text text-light">Estadio: <xsl:value-of select="estadio"/></h4>
					<h4 class="card-text text-light">Nº de socios: <xsl:value-of select="socios"/></h4>
                  </div>
          </div>
        </div>
	</div>
</xsl:for-each>
</div>

<!--Parte de los jugadores-->

	<div class="container">
         <h3>Plantilla Temporada 18/19</h3>
         <div class="row">
		  
	         <xsl:for-each select="/equiposdefutbol/equipo/jugadores/jugador[@equi='tenerife']">
	         	 <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2 mt-4">
				    <div class="card">
							<img class="card-img-top" alt="CD Tenerife">
							<xsl:attribute name="src">
								./img/tenerife/<xsl:value-of select="foto"/>
							</xsl:attribute>
							</img>
							<div class="card-body">
								<h5 class="card-title text-center"><xsl:value-of select="nombre"/></h5>
                                <p class="card-text"><xsl:value-of select="@posicion"/></p>
								<p class="card-text"><xsl:value-of select="nacionalidad"/></p>	
								<a class="btn btn-primary" target="_blank">
								    <xsl:attribute name="href">
								       <xsl:value-of select="datos"/>
							      </xsl:attribute>Estadísticas
								</a>
							</div>
						</div>	 
			    </div>
	         </xsl:for-each>

						
         </div>
    </div>
</section>	


<!--Parte de los datos del equipo-->

<section>
<a name="laspalmas"></a>
<div class="container-fluid bg-secondary mt-5">
<xsl:for-each select="/equiposdefutbol/equipo[@nomequi='UD Las Palmas']">
   <div class="card mb-3 bg-secondary">
       <div class="row no-gutters">
           <div class="col-md-2">
				<img src="./img/laspalmas/escudolaspalmas.png" class="img-fluid" alt="escudo UD Las Palmas"></img>
            </div>
			<div class="col-md-4">
			      <div class="card-body">
					<h2 class="card-tittle text-light mb-5"><xsl:value-of select="@nomequi"/></h2>
					<h4 class="card-text text-light" >Ciudad: <xsl:value-of select="ciudad"/></h4>
					<h4 class="card-text text-light">Estadio: <xsl:value-of select="estadio"/></h4>
					<h4 class="card-text text-light">Nº de socios: <xsl:value-of select="socios"/></h4>
                  </div>
          </div>
        </div>
	</div>
</xsl:for-each>
</div>

<!--Parte de los jugadores-->

	<div class="container">
         <h3>Plantilla Temporada 18/19</h3>
         <div class="row">
		  
	         <xsl:for-each select="/equiposdefutbol/equipo/jugadores/jugador[@equi='laspalmas']">
	         	 <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2 mt-4">
				    <div class="card">
							<img class="card-img-top" alt="UD Las Palmas">
							<xsl:attribute name="src">
								./img/laspalmas/<xsl:value-of select="foto"/>
							</xsl:attribute>
							</img>
							<div class="card-body">
								<h5 class="card-title text-center"><xsl:value-of select="nombre"/></h5>
                                <p class="card-text"><xsl:value-of select="@posicion"/></p>
								<p class="card-text"><xsl:value-of select="nacionalidad"/></p>	
								<a class="btn btn-primary" target="_blank">
								    <xsl:attribute name="href">
								       <xsl:value-of select="datos"/>
							      </xsl:attribute>Estadísticas
								</a>
							</div>
						</div>	 
			    </div>
	         </xsl:for-each>

						
         </div>
    </div>
</section>	

<!--Parte de los datos del equipo-->

<section>
<a name="albacete"></a>
<div class="container-fluid bg-secondary mt-5 mb-4">
<xsl:for-each select="/equiposdefutbol/equipo[@nomequi='Albacete Balompié SAD']">
   <div class="card mb-3 bg-secondary">
       <div class="row no-gutters">
           <div class="col-md-2">
				<img src="./img/albacete/escudoalbacete.png" class="img-fluid" alt="escudo Albacete Balompié SAD"></img>
            </div>
			<div class="col-md-4">
			      <div class="card-body">
					<h2 class="card-tittle text-light mb-5"><xsl:value-of select="@nomequi"/></h2>
					<h4 class="card-text text-light" >Ciudad: <xsl:value-of select="ciudad"/></h4>
					<h4 class="card-text text-light">Estadio: <xsl:value-of select="estadio"/></h4>
					<h4 class="card-text text-light">Nº de socios: <xsl:value-of select="socios"/></h4>
                  </div>
          </div>
        </div>
	</div>
</xsl:for-each>
</div>

<!--Parte de los jugadores-->

	<div class="container">
         <h3>Plantilla Temporada 18/19</h3>
         <div class="row">
		  
	         <xsl:for-each select="/equiposdefutbol/equipo/jugadores/jugador[@equi='albacete']">
	         	 <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2 mt-4">
				    <div class="card">
							<img class="card-img-top" alt="Albacete Balompié SAD">
							<xsl:attribute name="src">
								./img/albacete/<xsl:value-of select="foto"/>
							</xsl:attribute>
							</img>
							<div class="card-body">
								<h5 class="card-title text-center"><xsl:value-of select="nombre"/></h5>
                                <p class="card-text"><xsl:value-of select="@posicion"/></p>
								<p class="card-text"><xsl:value-of select="nacionalidad"/></p>	
								<a class="btn btn-primary" target="_blank">
								    <xsl:attribute name="href">
								       <xsl:value-of select="datos"/>
							      </xsl:attribute>Estadísticas
								</a>
							</div>
						</div>	 
			    </div>
	         </xsl:for-each>

						
         </div>
    </div>
</section>	
<footer>
<div class="row bg-secondary mt-5  p-5">
      <div class="col-lg-10 col-md-8 col-sm-2 col-2 text-left">
	  <a href="#top" ><img src="./img/flecha.png"></img></a>
	  </div>
		<div class=" text-right  col-lg-2 col-md-4 col-sm-10 col-10">
			<h3>Curso IFCD0210</h3>
			<h4>Práctica E2 UF1841</h4>
			<p>Rafael M. Glez Francisco</p>
		</div>
</div>
</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet> 