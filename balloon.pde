// Nipon Kamfoy
// 09/08/2020
// add the conditional if mouse has click the speed of balloon will increase

Balloon balloon0 ; 
Balloon balloon1 ;
Balloon balloon2 ;
Balloon balloon3 ;
Balloon balloon4 ;
void setup() {
  size(300, 500);
  background(255);
  balloon1 = new Balloon();
  balloon2 = new Balloon();
  balloon3 = new Balloon();
  balloon4 = new Balloon();
  balloon0 = new Balloon();
}

void draw() {
  background(255);
  balloon0.flow();
  balloon1.flow();
  balloon2.flow();
  balloon3.flow();
  balloon4.flow();
}

class Balloon {
  float x_position ;
  float y_position ;
  float speed_flow = 10;
  float size_balloon ;
  float colors ;
  float tail ;
  float tail_length ;

  public Balloon() {
    this.x_position = random(0, 300);
    this.y_position = 500;
    this.size_balloon = random (10, 100);
    this.colors = random(0, 255);
    this.tail = size_balloon/2 ;
    this.tail_length = random(10, 100);
    this.speed_flow = random(1, 5);
  }

  void build_balloon() {
    fill(colors);
    ellipseMode(CENTER);
    circle(x_position, y_position, size_balloon);
    line(x_position, y_position+tail, x_position, y_position+tail+tail_length);
  }

  void flow() {
    if (balloon0.y_position < 0) {
      balloon0 = new Balloon();
    }
    else if (balloon1.y_position < 0) {
      balloon1 = new Balloon();
    }
    else if (balloon2.y_position < 0) {
      balloon2 = new Balloon();
    }
    else if (balloon3.y_position < 0) {
      balloon3 = new Balloon();
    }
    else if (balloon4.y_position < 0) {
      balloon4 = new Balloon();
    }
    else if (mousePressed){
      y_position -= speed_flow;
    }
    y_position -= speed_flow;
    build_balloon();
  }
}
