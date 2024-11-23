class Star
{
  private int myX, myY, mySize, myColor;
  public Star()
  {
    mySize = (int)(Math.random()*6)+1;
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*120),(int)(Math.random()*120),(int)(Math.random()*120));
  }
  public void show() {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
