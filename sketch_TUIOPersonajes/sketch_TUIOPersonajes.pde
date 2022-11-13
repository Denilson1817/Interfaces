import TUIO.*;
//Declaracion de variables
TuioProcessing tuio;

import gifAnimation.*;

//GIFs de la ventana numero Uno///////////////////////////////////////////////////////////
Gif numeroUno;
Gif numeroDos;
Gif numeroTres;
Gif numeroCuatro;
Gif numeroCinco;
Gif numeroSeis;
Gif numeroSiete;
Gif numeroOcho;
Gif numeroNueve;
Gif numeroDiez;

//GIFS de la ventana Dias////////////////////////////////////////////////////////////////
Gif lunes;
Gif martes;
Gif miercoles;
Gif jueves;
Gif viernes;
Gif sabado;
Gif domingo;


//Objetos de las clases para las ventanas////////////////////////////////////////////////
Dia dia = new Dia();
Numero numero = new Numero();
Saludo saludo = new Saludo();
Pregunta pregunta = new Pregunta();

boolean banderaPantalla = true;//Bandera para el cambio de pantallas
boolean numero0 = false;//Bandera para eliminación del GIF de la ventana
int contador = 2;
int contadorNumero = 0;//Este contador es para mostrar los GIF en la pantalla de números


int contadorDia = 0;//Contador para mostrar los GIF en la pantalla de dias
boolean banderaDia = false; //Bandera para eliminación del GIF dia

PImage Inicio, Saludos, Preguntas, Dias, Numeros;//PImage para las pantallas
TuioObject objectTUIO;

void setup(){
  size(900,600);
  //Crear un objeto TUIO
  tuio = new TuioProcessing(this);
  Inicio=loadImage("Inicio.png");
  ///Llamado de las clases///////////////////////////////////////////////////////////////////////////////////////////// 
  dia.setup();
  pregunta.setup();
  numero.setup();
  saludo.setup();
  //Dibujar la ventana
  image(Inicio,0,0);
  /////GIFs de números///////////////////////////////////////////////////////////////////////////////////////////////
    numeroUno =  new Gif(this, "Uno.gif" );
    numeroUno.play();
    numeroDos = new Gif(this, "Dos.gif");
    numeroDos.play();
    numeroTres = new Gif(this, "Tres.gif");
    numeroTres.play();
    numeroCuatro = new Gif(this, "Cuatro.gif");
    numeroCuatro.play();
    numeroCinco = new Gif(this, "Cinco.gif");
    numeroCinco.play();
    numeroSeis = new Gif(this, "Seis.gif");
    numeroSeis.play();
    numeroSiete = new Gif(this, "Siete.gif");
    numeroSiete.play();
    numeroOcho = new Gif(this, "Ocho.gif");
    numeroOcho.play();
    numeroNueve = new Gif(this, "Nueve.gif");
    numeroNueve.play();
    numeroDiez = new Gif(this, "Diez.gif");
    numeroDiez.play();
    
    //GIFs de dias////////////////////////////////////////////////////////////////////////////////////////////////
    lunes =  new Gif(this, "Lunes.gif" );
    lunes.play();
    martes = new Gif(this, "Martes.gif");
    martes.play();
    miercoles = new Gif(this, "Miercoles.gif");
    miercoles.play();
    jueves = new Gif(this, "jueves.gif");
    jueves.play();
    viernes = new Gif(this, "viernes.gif");
    viernes.play();
    sabado = new Gif(this, "sabado.gif");
    sabado.play();
    domingo = new Gif(this, "domingo.gif");
    domingo.play();
    
    
    
    numero.setup();
}




//Dibujar los GIFs
void draw(){
   //////////if para la aparición de los números////////////////////////////////////////////////////////////////
  if (contador == 6 && numero0 == true && contadorNumero == 1){
    numerosUno();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 2){
    numerosDos();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 3){
    numerosTres();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 4){
    numerosCuatro();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 5){
    numerosCinco();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 6){
    numerosSeis();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 7){
    numerosSiete();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 8){
    numerosOcho();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 9){
    numerosNueve();    
  }else if(contador == 6 && numero0 == true && contadorNumero == 10){
    numerosDiez();    
  }
  if(contador == 6 && numero0 == false){
        numero.pantallaNumero();
  }
  //metodo para dibujar los dias de la semana
  dibujaDia();
}

//Metodo Inicio
void Inicio(){
  image(Inicio,0,0);
}

//Saber donde doy click

void mouseClicked(){
  println("click en x=" + mouseX + ", y=" + mouseY );
  
  if(mouseX>=30 && mouseX<=260 && mouseY>=230 && mouseY<=300 && banderaPantalla == true){
    print("sobre el boton");
    saludo.pantallaSaludo();
    banderaPantalla = false;
    contador =1;
    
  }
  
  if(mouseX>=660 && mouseX<=850 && mouseY>=500 && mouseY<=570 && banderaPantalla == false){
    print("sobre el boton");
    Inicio(); 
    banderaPantalla = true;
    contador = 2;
  }
  
  if(mouseX>=35 && mouseX<=265 && mouseY>=365 && mouseY<=455 && banderaPantalla == true){
    print("sobre el boton");
    pregunta.pantallaPregunta();
    banderaPantalla = false;
    contador = 3;
  }
  
  if(mouseX>=630 && mouseX<=860 && mouseY>=220 && mouseY<=310 && banderaPantalla == true){
    print("sobre el boton");
    dia.pantallaDia();
    banderaPantalla = false;
    contador = 5;
  } 
  
  if(mouseX>=630 && mouseX<=860 && mouseY>=350 && mouseY<=440 && banderaPantalla == true){
    print("sobre el boton");
    numero.pantallaNumero();
    banderaPantalla = false;
    contador = 6;
  } 

}
//////////////////////Funciones para mandar a llamar loS GIFs de los números/////////////////
void numerosUno(){image(numeroUno, 200, 180, width = 400, height = 300);}
void numerosDos(){image(numeroDos, 200, 180, width = 400, height = 300);}
void numerosTres(){image(numeroTres, 200, 180, width = 400, height = 300);}
void numerosCuatro(){image(numeroCuatro, 200, 180, width = 400, height = 300);}
void numerosCinco(){image(numeroCinco, 200, 180, width = 400, height = 300);}
void numerosSeis(){image(numeroSeis, 200, 180, width = 400, height = 300);}
void numerosSiete(){image(numeroSiete, 200, 180, width = 400, height = 300);}
void numerosOcho(){image(numeroOcho, 200, 180, width = 400, height = 300);}
void numerosNueve(){image(numeroNueve, 200, 180, width = 400, height = 300);}
void numerosDiez(){image(numeroDiez, 200, 180, width = 400, height = 300);}


//////////////////////Funciones para mandar a llamar loS GIFs de los dias/////////////////
void loadLunes(){image(lunes, 200, 180, width = 400, height = 300);}
void loadMartes(){image(martes, 200, 180, width = 400, height = 300);}
void loadMiercoles(){image(miercoles, 200, 180, width = 400, height = 300);}
void loadJueves(){image(jueves, 200, 180, width = 400, height = 300);}
void loadViernes(){image(viernes, 200, 180, width = 400, height = 300);}
void loadSabado(){image(sabado, 200, 180, width = 400, height = 300);}
void loadDomingo(){image(domingo, 200, 180, width = 400, height = 300);}



////Esta función no la deben modificar///////////////////////////////////////////////////////////////////777
void addTuioObject(TuioObject objectTUIO){
  int idObjeto = objectTUIO.getSymbolID();
  println("Objeto con ID "+ idObjeto + " detectado en posición X "+objectTUIO.getX()+
  " y posición Y "+objectTUIO.getY());
}

void updateTuioObject (TuioObject objectTUIO){
  int idObjeto = objectTUIO.getSymbolID();
  ///////if para la detectar el id de Fiducial---> Agreguen el suyo, pero creen una bandera diferente para el de ustedes
  if(idObjeto == 0){
    numero0 = true;
    contadorNumero = 1;
 
  }else if(idObjeto == 1){
    numero0 = true;
    contadorNumero = 2;
  }
  else if(idObjeto == 2){
    numero0 = true;
    contadorNumero = 3;
  }else if(idObjeto == 3){
    numero0 = true;
    contadorNumero = 4;
  }else if(idObjeto == 4){
    numero0 = true;
    contadorNumero = 5;
  }else if(idObjeto == 5){
    numero0 = true;
    contadorNumero = 6;
  }else if(idObjeto == 6){
    numero0 = true;
    contadorNumero = 7;
  }else if(idObjeto == 7){
    numero0 = true;
    contadorNumero = 8;
  }else if(idObjeto == 8){
    numero0 = true;
    contadorNumero = 9;
  }else if(idObjeto == 9){
    numero0 = true;
    contadorNumero = 10;
  }
  
  
  
  
  //dia
  onIdDia(idObjeto);
}

void removeTuioObject(TuioObject objectTuio){
  println("Objeto fuera "+objectTuio.getSymbolID());
  int idObjeto = objectTuio.getSymbolID();
  ///////if para la detectar el id de Fiducial---> Agreguen el suyo, pero creen una bandera diferente para el de ustedes
  if(idObjeto == 0){
    numero0 = false; 
  }else if(idObjeto == 1){
    numero0 = false;  
  }else if(idObjeto == 2){
    numero0 = false; 
  }else if(idObjeto == 3){
    numero0 = false; 
  }else if(idObjeto == 4){
    numero0 = false; 
  }else if(idObjeto == 5){
    numero0 = false; 
  }else if(idObjeto == 6){
    numero0 = false; 
  }else if(idObjeto == 7){
    numero0 = false; 
  }else if(idObjeto == 8){
    numero0 = false; 
  }else if(idObjeto == 9){
    numero0 = false; 
  }
  
  offIdDia(idObjeto);
}

void refresh(TuioTime frameTame){
  redraw();
  
}




void dibujaDia(){
  
  if (contador == 6 && numero0 == true && contadorDia == 1){
    loadLunes();    
  }else if(contador == 6 && numero0 == true && contadorDia == 2){
    loadMartes();    
  }else if(contador == 6 && numero0 == true && contadorDia == 3){
    loadMiercoles();    
  }else if(contador == 6 && numero0 == true && contadorDia == 4){
    loadJueves();    
  }else if(contador == 6 && numero0 == true && contadorDia == 5){
    loadViernes();    
  }else if(contador == 6 && numero0 == true && contadorDia == 6){
    loadSabado();    
  }else if(contador == 6 && numero0 == true && contadorDia == 7){
    loadDomingo();    
  }
  if(contador == 6 && numero0 == false){
        dia.pantallaDia();
  }
  
  
}

int onIdDia(int idObjeto){
  
  if(idObjeto == 12){
    banderaDia = true;
    contadorDia = 1;
 
  }else if(idObjeto == 13){
    banderaDia = true;
    contadorDia = 2;
  }
  else if(idObjeto == 14){
    banderaDia = true;
    contadorDia = 3;
  }else if(idObjeto == 15){
    banderaDia = true;
    contadorDia = 4;
    
  }else if(idObjeto == 16){
    banderaDia = true;
    contadorDia = 5;
  }else if(idObjeto == 17){
    banderaDia = true;
    contadorDia = 6;
    
  }else if(idObjeto == 18){
    banderaDia = true;
    contadorDia = 7;
  }else if(idObjeto == 18){
    banderaDia = true;
    contadorDia = 8;
  }
  
  
  return idObjeto;
}



int offIdDia(int idObjeto){
  
  if(idObjeto == 12){
    banderaDia = false;

 
  }else if(idObjeto == 13){
    banderaDia = false;
    
  }
  else if(idObjeto == 14){
    banderaDia = false;
   
  }else if(idObjeto == 15){
    banderaDia = false;
    
    
  }else if(idObjeto == 16){
    banderaDia = false;
    
  }else if(idObjeto == 17){
    banderaDia = false;
    
    
  }else if(idObjeto == 18){
    banderaDia = false;
    
  }else if(idObjeto == 18){
    banderaDia = false;
    
  }
  
  
  return idObjeto;
}
