class Spaceship extends Floater{
   public Spaceship(){
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = -90;
     corners = 4;
     myColor = color(250);
     myCenterX = 250;
     myCenterY = 250;
     xCorners = new int[]{-8, 16, -8, -2};
     yCorners = new int[]{-8, 0,8, 0};
   }
   public void setXspeed(int xSpeed)
{
  myXspeed = xSpeed;
}
public void setYspeed(int ySpeed)
{
  myYspeed = ySpeed;
}
public void setmyPointDirection(int Direction)
{
  myPointDirection = Direction;
}
public void setmyCenterX(int x)
{
  myCenterX = x;
}
public void setmyCenterY(int y)
{
  myCenterY = y;
}

  public double getX() {return myCenterX;}
  public double getY() {return myCenterY;}
  public double getPointDirection(){return myPointDirection;}
  public double getmySpeedX(){return myXspeed;}
  public double getmySpeedY(){return myYspeed;}
}
