import processing.video.*;
int n = 196;
int[] a = new int[n+1];
int i = 1;
void setup()
{
  size(1000,1000);
  background(255);
  textSize(20);
  for (int i = 2; i <= n; i++)
    drawRect(i, color(0), color(255), color(0));
  for (int i = 2; i <= n; i++)  
    a[i] = 1;
  
}

void draw(){
   if(i < sqrt(n)){
      if (a[i] == 1){
          drawRect(i, color(255),color(255,155,5), color(0));
          for (int j = i; j * i <= n; j++){
            a[j * i] = 0;
            drawRect(j*i, color(255),color(225,255,5),color(0));
          }
      }
   }else if (i < n){
     if(a[i] == 1)
       drawRect(i, color(255),color(255,155,5), color(0));
   }else{
   }
   i++;
   if (i < sqrt(n)){
     delay(500);
   }else{
     delay(10);
   }
}

void findPrime(){
    for (int i = 2; i <= sqrt(n); i++){
      if (a[i] == 1){
          drawRect(i, color(255,0,0),color(255), color(0));
          for (int j = i; j * i <= n; j++){
            a[j * i] = 0;
            drawRect(j*i, color(200,200,200),color(230,230,230),color(255));
          }
      }
    }
}

void drawRect(int i, color cstroke, color cfill, color ctext){
  int row = (i - 1) / 14;
  fill(cfill);
  stroke(cstroke);
  ellipseMode(CENTER);
  ellipse(50 + (i - 1) % 14 * 60, 60 + row * 60, 55, 55);
  fill(ctext);
  textMode(CENTER);
  text(i, (i - 1) % 14 * 60 + 35, 65 + row * 60);
}

