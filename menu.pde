
void menu(){

  cjuego = 0;
  background(230);
  image(title,175,100);
  fill(0);textAlign(CENTER);textSize(20);text("Presiona cualquier tecla para jugar!",350,350);
if(keyPressed){ state = 1;}
}
