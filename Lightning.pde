int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()

{
  size(500,500);
  strokeWeight(10);
  background(0,0,0);

}

void draw()

{
  stroke((int)(Math.random())*255,(int)(Math.random())*255,(int)(Math.random())*255);
  while(endX<500){
  endX = startX + (int)(Math.random())*10;
  endY = startY + (int)(Math.random())*18-9;
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  }
}

void mousePressed()
{
  startX = (int)(Math.random())*10;
  startY = (int)(Math.random())*18-9;
  endX = 0;
  endY = 150;

}