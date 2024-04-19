PImage fondo;
public Galaga nave;
public Alien enemigo;
int cantidadBloquesMax=10;
int distanciaBloques=10;
int x=100;
int y=330;
int cantidadNubesMax=6;



public void setup(){
  size(640,360);
  fondo=loadImage("fondo.png");
  nave = new Galaga();
  nave.posicion = new PVector(width/2,height/1.4);
  enemigo = new Alien (new PVector(width/2,0));
  
}

void draw(){
  tint(#EC29ED);
  image(fondo,0,0);
  noTint();
  enemigo.dibujar();
  enemigo.mover();
  nave.dibujar();
  fill(#00E3FF);
   for (int cantidadBloques = 0; cantidadBloques < cantidadBloquesMax; cantidadBloques++) {
    rect(cantidadBloques * (width / cantidadBloquesMax + distanciaBloques), y, width / cantidadBloquesMax, 20);
  }
   fill(#ECEDA3);
     for (int cantidadNubes = 0; cantidadNubes < cantidadNubesMax; cantidadNubes++) {
    ellipse(random(width), random(height / 2), 50, 50 / 2);
 
  }

  
}




public void mousePressed(){
  if(mouseButton==RIGHT){
    nave.posicion.x+=10;
  }
   if(mouseButton==LEFT){
    nave.posicion.x-=10;
  }
 
  
  }
  
