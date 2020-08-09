// Nipon Kamfoy
// 09/08/2020
// change the movement of balloon to start again when it hitting a frame

int speed = 5;
int y_position = 500;
Balloon balloon ;

void setup(){
   size(300,500);
   balloon = new Balloon();
}

void draw(){
  balloon.flow();
}

class Balloon{
    void build_balloon(){
    fill(0);
    ellipseMode(CENTER);
    circle(150,y_position,100);
    line(150,y_position+50,150,y_position+150);
  }

  void flow(){
    background(255);
    if (y_position <= 0 || y_position >500){
      y_position = 500;
    }
    y_position -= speed;
    build_balloon();
  }
}
