void setup()
{
  size(600, 600, P3D);
  background(0);
  world = loadImage("world.jpg");
  plane = new Plane(width/2, height/2, 0, 50) ;
}

boolean starting = true;
PImage world ;
Plane plane ;
boolean[] keys = new boolean[1000];

ArrayList<WORLD> data = new ArrayList<WORLD>();

void draw()
{
  stroke(0,255,0);
  fill(0,255,0);
  //plane.update();
  //plane.render();
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