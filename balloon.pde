// Nipon Kamfoy
// 7/08/2020
// balloon can move up and down when it hitting  frame and fill black color in balloon
int speed = 10;
int y_position = 500;
void setup(){
   size(300,500);
}

void draw(){
  flow();
}

void build_balloon(){
  fill(0);
  ellipseMode(CENTER);
  circle(150,y_position,100);
  line(150,y_position+50,150,y_position+150);
}

void flow(){
  background(255);
  if (y_position <= 0 || y_position >500){
    speed *= -1;
  }
  y_position -= speed;
  build_balloon();
}
