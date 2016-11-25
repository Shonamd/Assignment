boolean starting = false;
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
    bcheck();
    rcheck();
    gcheck();
    colourbuttons();
  }
  
  else if( starting == true)
  {
    change();
    viewscreen();
  } 
}