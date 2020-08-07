// Nipon Kamfoy
// 7/08/2020
// balloon can move from bottom to top 
int speed = 10;
int y_position = 500;
void setup(){
   size(300,500);
}

void draw(){
  flow();
}

void build_balloon(){
  ellipseMode(CENTER);
  circle(150,y_position,100);
  line(150,y_position+50,150,y_position+150);
}

void flow(){
  background(255);
  y_position -= speed;
  build_balloon();
}
