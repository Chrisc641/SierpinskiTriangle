public void setup()
{
  size(800, 800);
  background(0);
  noStroke();
  fill(195, 198, 8);
  sierpinski(0, (float)(800 - (800 - 400 * Math.sqrt(3)) / 2), 800);
}

public void draw()
{

}

public void mouseDragged()//optional
{

}

public void sierpinski(float x, float y, float len) 
{
  if(len <= 20)
  {
  	triangle(x, y, x + len / 2, y, x + len / 4, y - len / 4 * (float)Math.sqrt(3));
  }
  else
  {
  	sierpinski(x, y, len / 2);
  	sierpinski(x + len / 2, y, len / 2);
  	sierpinski(x + len / 4, y - len / 4 * (float)Math.sqrt(3), len / 2);
  }	
}