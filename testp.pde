  int a = (int) random(4,8);
int b = (int) random(2,5);
int c = (int) random(2,5);
int col[]={(int)random(0,255),(int)random(0,255),(int)random(0,255)};

void setup(){

size(400,400);
background(0);

}


void draw(){

if(a%2!=0){
a=a+1;
}
  mandalacentro(a,100);
 mandalaexterior(c,150);
 mandalaexterior(b,200);
 mandalacentro(a,200);

  
}

void mandalacentro(int petalos, int tama ){
stroke(col[0],col[1],col[2]);
for(float i=0; i<1500; i++){
point(width/2 + cos(i) * (tama*cos(petalos*i)), height/2 + sin(i) * (tama*cos(petalos*i)));
}
}

void mandalaexterior(int petalos, int tama ){
stroke(col[1],col[0],col[2]);
for(float i=0; i<1500; i++){
point(width/2 + cos(i) * (tama*sin(petalos*i)), height/2 + sin(i) * (tama*sin(petalos*i)));
}
}
