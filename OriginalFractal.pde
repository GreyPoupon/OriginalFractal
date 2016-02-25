
public void setup()
{
  size(800, 800);
  background(0);
  stroke(0,0,255);
  frameRate(2);
}

public void draw()
{
  shapes(width/2, height/2, 500);
}

public void shapes(int x, int y, int len) 
{
  if(len <= 10)
  {
    stroke((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
    fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  	rect(x, y, len, len);
  }
  else
  {
  	shapes(x - len, y, len/4);
  	shapes(x + len, y, len/4);
  	shapes(x, y - len/2, len/4);
    shapes(x, y + len/2, len/4);
    shapes(x + len/2, y - len, len/4);
    shapes(x + len/2, y + len, len/4);
    shapes(x - len/2, y - len, len/4);
    shapes(x - len/2, y + len, len/4);
  }	
}