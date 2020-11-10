Particle[] starlings = new Particle[1000];
void setup(){
  background(0);
  size(600, 600);
  for(int i = 0; i < starlings.length; i ++){
    starlings[i] = new Particle();
  }
  for (int a = 0; a < 4; a ++)
  starlings[a] = new OddballParticle();
}
void draw(){
  noStroke();
  fill(0, 0, 0, 10);
  rect(0, 0 , 600, 600);
  for(int i = 0; i < starlings.length; i ++){
    starlings[i].move();
    starlings[i].show();
    starlings[0] = new OddballParticle();
  }
}
class Particle{
  public double myX, myY, mySpeed, myAngle, newAngle, size;
  public int rColor, gColor, bColor;
  Particle(){
    myX = 150;
    myY = 150;
    myAngle = Math.random() * 100 * Math.PI;
    newAngle = Math.random() * 4 * Math.PI;
    mySpeed = Math.random() * 15;
    size = 10;
    rColor = (int)(Math.random() * 155 + 100);
    gColor = (int)(Math.random() * 155 + 100);
    bColor = (int)(Math.random() * 155 + 100);
  }
  void move(){
    myX += Math.sin(myAngle) * mySpeed;
    myY += Math.cos(myAngle) * mySpeed;
    size += .001;
  }
  void show(){
    fill(rColor, gColor, bColor, 100);
    ellipse((float)myX, (float)myY, (float)size, (float)size);
  }
}

class OddballParticle extends Particle{
  OddballParticle(){
    myX = 450;
    myY = 450;
    myAngle = (double)(Math.random() * 2 * Math.PI);
    mySpeed = Math.random() * 3;
  }
  void move(){
    myX = myX + (int)(Math.random() * 3) - 1;
    myY = myY + (int)(Math.random() * 3) - 1;
    size += 1000;
  }
  
  void show(){
    fill(255);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}
