ArrayList<Asteroids> gooner;
Spaceship goon;
Star [] stars = new Star[190];
ArrayList<Bullet> shooter;
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean hyperspace = false;
public void setup()
{
  shooter = new ArrayList<Bullet>();
  gooner = new ArrayList<Asteroids>();
  size(500,500);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
    goon = new Spaceship();
   }
   for(int j = 0; j < 10; j++){
    gooner.add(new Asteroids());
    }
  }

public void draw()
{
  background(0);
   if(wIsPressed == true)
  {
    goon.accelerate(0.15);
  }
   if(aIsPressed == true){
    goon.turn(-4);
  }
  if(dIsPressed == true)
   {
     goon.turn(4);
   }
    if(sIsPressed == true)
   {
    goon.accelerate(-0.15);
   }
   
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  goon.show();
  goon.move();
  boolean yes = false;
   
  for(int j = gooner.size()-1; j >=0; j--){
  //boolean yes = false;
  if((int)(Math.random()*2)==1){
     yes = true;
  }
  if(yes == true){
   gooner.get(j).setRotateSpeed((double)(Math.random()*5)-10);
  }
  if(yes == false){
  gooner.get(j).setRotateSpeed((double)(Math.random()*5)+10);
   }
  gooner.get(j).show();
  gooner.get(j).move();
  if(dist((float)(gooner.get(j).myCenterX), (float)(gooner.get(j).myCenterY), (float)(goon.myCenterX), (float)(goon.myCenterY)) <= 10){
    gooner.remove(j);
  }
  }
  for(int i = shooter.size()-1; i>=0; i--){
    shooter.get(i).move();
    shooter.get(i).show();
    for(int m = gooner.size()-1; m >= 0; m--){
    if(dist((float)(shooter.get(i).myCenterX), (float)(shooter.get(i).myCenterY), (float)(gooner.get(m).myCenterX), (float)(gooner.get(m).myCenterY)) <=15){
      gooner.remove(m);
      shooter.remove(i);
      break;
     }
    }
  }
}
 //write key pressed here
 public void keyPressed()
 {
   if(key == 'w')
   {
     wIsPressed = true;
   }
   else if(key == 'a')
   {
     aIsPressed = true;
   }
  else if(key == 'd')
   {
     dIsPressed = true;
   }
   else if(key == 's')
   {
     sIsPressed = true;
   } if(key == 'l')
  {
   goon.setXspeed(0);
   goon.setYspeed(0);
   goon.setmyPointDirection((int)(Math.random()*360));
   goon.setmyCenterX((int)(Math.random()*500));
   goon.setmyCenterY((int)(Math.random()*500));
  }
 else if (key == 'f'){
   shooter.add(new Bullet(goon));
  }
 }

void keyReleased()
{
  if(key=='w')
  {
    wIsPressed = false;
  }
  else if (key == 'a')
  {
    aIsPressed = false;
  }
   if(key=='s')
  {
    sIsPressed = false;
  }
  else if (key == 'd')
  {
    dIsPressed = false;
  }

}
