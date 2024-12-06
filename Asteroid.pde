class Asteroids extends Floater{
  private double rotateSpeed;
  public Asteroids(){
   myColor = color(255);
   corners = 6;
   rotateSpeed = (double)(Math.random()*0);
   xCorners = new int[]{-11, 7, 13, 6, -11, -5};
   yCorners = new int[]{-8, -8, 0, 10, 8, 0};
   myCenterX =(int)(Math.random()*600);
   myCenterY =(int)(Math.random()*600);
   myYspeed = (double)(Math.random()*6-3);
   myXspeed = (double)(Math.random()*6-3);
  }
  public void move(){
    turn(rotateSpeed);
    super.move();
    
  }
  public void setRotateSpeed(double spinSpeed){
    
    rotateSpeed = spinSpeed;
  }
}
