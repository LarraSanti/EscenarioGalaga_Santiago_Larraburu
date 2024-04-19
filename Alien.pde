class Alien{
  public PVector posicion;
  public PImage  imagen;
  boolean moviendoDerecha = true;
  
  public Alien(){
    imagen = loadImage("Alien.png");
    }
  
  public Alien(PVector posicion){
    this.posicion=posicion;
    this.imagen = loadImage("Alien.png");
  }
  
  public void dibujar(){
    image(imagen,posicion.x,posicion.y,60,60);
  }
  
  public void mover() {
    if (moviendoDerecha) {
      posicion.x += 5;
      if (posicion.x > width - 60) {
        moviendoDerecha = false;
      }
    } else {
      posicion.x -= 5; 
      if (posicion.x < 0) {
        moviendoDerecha = true;
      }
    }
  }
  
  
  }

  
  
  
  
  
  
  
