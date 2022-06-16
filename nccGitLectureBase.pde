
void setup(){
  size(400, 300);
}

int i = 0;

void draw(){
  i += 1;
  if(100 < i){
    i = 0;
    delay(1000);
  }
  
  //0.000 ~ 0.999
  float t = i / 100.0; 
  
  background(240);
  
  drawRotatingRod(t);
  
  delay(1);
}


//線の長さ
int lineLength = 100;

void drawRotatingRod(float t){
  //-2t^3 + 3t^2
  float fade = -2*t*t*t + 3*t*t;
    
  //回転の中心
  int centerX = width/2;
  int centerY = height/2;
  
  float startX = centerX;
  float startY = centerY;
  float endX = centerX + lineLength * cos(2 * PI * fade);
  float endY = centerY + lineLength * sin(2 * PI * fade);
  
  stroke(#ff4500);
  
  line(startX, startY, endX, endY);
}
