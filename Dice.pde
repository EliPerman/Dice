void setup()
{
  noLoop();
}
void draw()
{
  background(150);
  
  int sum = 0;
  
  for (int y = 20; y <= 70; y += 25){
    for (int x = 25; x <= 75; x += 25){
      Die bartholomew = new Die(x,y);
      bartholomew.show();
      sum += bartholomew.dots;
    }
  }
  
  textAlign(CENTER);
  text("Total = " + sum, 50, 95);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dots;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    dots = (int)(Math.random() * 6 + 1);
  }
  void roll()
  {
    dots = (int)(Math.random() * 6 + 1);
  }
  void show()
  {
    fill(255);
    stroke(0);
    rect(myX - 10, myY - 10, 20, 20);
    
    fill(0);
    if (dots % 2 == 1){
      ellipse(myX, myY, 2, 2);
    }
    if (dots > 1){
      ellipse(myX - 5, myY + 5, 2, 2);
      ellipse(myX + 5, myY - 5, 2, 2);
    }
    if (dots > 3){
      ellipse(myX - 5, myY - 5, 2, 2);
      ellipse(myX + 5, myY + 5, 2, 2);
    } 
    if (dots == 6){
      ellipse(myX - 5, myY, 2, 2);
      ellipse(myX + 5, myY, 2, 2);
    }
  }
}
