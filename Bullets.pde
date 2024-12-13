class Bullet extends Floater{
  public Bullet(Spaceship goon){
    myCenterX = goon.getX();
    myCenterY = goon.getY();
    myXspeed = goon.getmySpeedX();
    myYspeed = goon.getmySpeedY();
    myPointDirection = goon.getPointDirection();
    accelerate(10);
    //myColor = color(255);
  }
  public void show(){
    fill(color(255));
    ellipse((float)(myCenterX), (float)(myCenterY), 5,5);
  }
}
