int counter = 0;
void setup()
{
  noLoop();
  size(500, 500);
  textAlign(CENTER);
}
void draw()
{
  background(0);
  for(int j = 50; j < 500; j+= 50){
    for(int i = 0; i < 500; i+= 50){
      Die bob = new Die(i, j);
      bob.roll();
      bob.show();
      counter+= bob.num;
    }
  fill(255);
  textSize(30);
  }
  text("Total: " + counter, 100, 45);
  counter = 0;
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, num;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    num=(int)((Math.random()* 6) + 1);
  }
  void show()
  {
    fill(255);
    strokeWeight(3);
    stroke(0);
    rect(myX, myY, 50, 50);
    fill(0);
    if (num == 1) {
      ellipse(myX+25, myY+25, 10, 10);
    } else if (num == 2) {
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    } else if (num == 3) {
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    } else if (num == 4) {
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
    } else if (num == 5) {
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (num == 6) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
  }
}
