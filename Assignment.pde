boolean starting = true;
PImage world ;

void setup()
{
  size(500, 500, P3D);
  background(0);
  world = loadImage("world.jpg");
}

void draw()
{
  if( starting == false)
  {
    change();
    opening();
  }
  
  else if( starting == true)
  {
    change();
    viewscreen();
  }
  
  
}