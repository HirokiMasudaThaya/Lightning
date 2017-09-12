int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;
int x = 0;
void setup()

{
  size(500,500);
  strokeWeight(4);
  background(0,0,0);

}

void hotAirBalloon(int x, int yar)
{
  line(120+x,110+yar,110+x,210+yar);
  line(80+x,110+yar,95+x,210+yar);
  fill(150,0,0);
  ellipse(100+x,100+yar,65,65);
  fill(50,0,0);
  rect(82+x, 175+yar, 40, 40);

}

void draw()

{
  stroke(0,50,60);
  background(0,0,0);
  hotAirBalloon(x,30);
  hotAirBalloon(x+100,250);
  x = x + 1;
  if(x >500)
  {x = 0;
  }
  stroke(0,0,(int)(Math.random()*255));
  while(endY<500){
  endY = startY + (int)(Math.random()*10);
  endX = startX + (int)(Math.random()*18-9);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  }
  
}

void mousePressed()
{
  startX = (int)(Math.random()*500);
  startY = 0;
  endX = 0;
  endY = 150;
  background(0,0,0);


}