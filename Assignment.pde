boolean starting = true;
PImage world ;

void setup()
{
  size(600, 600, P3D);
  background(0);
  world = loadImage("world.jpg");
}

ArrayList<WORLD> data = new ArrayList<WORLD>();

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