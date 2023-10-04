void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  int sum = 0 ;
  background (0);
  for (int i = 100; i < 500; i+= 150) {
    for (int j = 100; j < 500; j+=150) {
      Die jenny = new Die (j, i);
      jenny.show();
      jenny.roll();
      sum = sum + jenny.dots;
    }
  }
  fill(255);
  textSize (25);
  text(sum, 235,200);
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int myX, myY;
  int dots;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    //variable initializations here
  }
  void roll()
  {
    fill(0);
    dots = (int)(Math.random()*6)+1;
    if (dots == 1) {
      ellipse (myX, myY, 10, 10);
    } else if (dots == 2) {
      ellipse (myX, myY+12, 10, 10);
      ellipse (myX, myY-12, 10, 10);
    } else if (dots == 3) {
      ellipse (myX-14, myY+20, 10, 10);
      ellipse (myX, myY, 10, 10);
      ellipse (myX+14, myY-20, 10, 10);
    } else if (dots == 4){
      ellipse (myX-14, myY+14, 10, 10);
      ellipse (myX+14, myY-14, 10, 10);
      ellipse (myX-14, myY-14, 10, 10);
      ellipse (myX+14, myY+14, 10, 10);
    } else if (dots == 5) {
      ellipse (myX-14, myY+14, 10, 10);
      ellipse (myX+14, myY-14, 10, 10);
      ellipse (myX-14, myY-14, 10, 10);
      ellipse (myX+14, myY+14, 10, 10);
      ellipse (myX, myY, 10, 10);
    } else if (dots == 6){
      ellipse (myX-14, myY+20, 10, 10);
      ellipse (myX-14, myY, 10, 10);
      ellipse (myX-14, myY-20, 10, 10);
      ellipse (myX+14, myY+20, 10, 10);
      ellipse (myX+14, myY, 10, 10);
      ellipse (myX+14, myY-20, 10, 10);
    }
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX-40, myY-40, 80, 80, 18);
  }
}
