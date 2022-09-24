float xpiso;
PImage piso,player,enemy, lsr,ataque,tela,title;
//Player 
boolean w,a,d;
float xpj=20;
float ypj=290;
int banderaypj=0;
//energia
float energia = 100;  
int benergia,brefresh,barrae;
//vida
PImage vida;
int cvida = 3;
int bvida = 1;
//npcs
npc ply;
npc[] enemy1 = new npc[3];
npc[] laser = new npc[1];
//configuraciones
int cjuego = 0;
int state=0;
int score = 0;
void setup(){
  
 size(700,500); 
 fill(125);rect(0,0,700,500);
 piso = loadImage("piso.png");
 piso.resize(700,150);
 
 tela = loadImage("tela2.png");
 tela.resize(700,500);
 
 title = loadImage("titulo.png");
 title.resize(350,200);
 
 player = loadImage("jugador1.png");
 player.resize(50,60);
 
 ataque = loadImage("agua.png");
 ataque.resize(25,20);
 
 vida = loadImage("vida completa.png");
 ply = new npc(xpj,ypj,5,player);
 enemy = loadImage("enemy1.png");
 enemy.resize(60,50);
 lsr = loadImage("laser2.png");
 lsr.resize(150,152);
     for(int i = 0; i<enemy1.length;i++){
    float x = random(width,2*width);
    float y = random(150,300);
    enemy1[i] = new npc(x,y,4,enemy); 
  }
   for(int i2 = 0; i2<laser.length;i2++){
    float x = random(width,2*width);
    laser[i2] = new npc(x,0,2,lsr); 
  }
}


void draw(){
 switch(state){
  case 0:{menu();}break;
  case 1:{gameplay();}break;
}
}
     
