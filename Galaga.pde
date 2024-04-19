class Galaga{
  public PVector posicion;
  public PImage imagen;


   public Galaga(){
    imagen=loadImage("Galaga.png");
  }


  public void dibujar(){
   image(imagen,posicion.x,posicion.y,60,60);
  }
    
}
