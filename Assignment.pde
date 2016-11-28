void setup()
{
  size(500, 500, P3D);
  background(0);
  world = loadImage("world.jpg");
  usa = loadImage("usa.jpg");
  aus = loadImage("aus.jpg");
  sa = loadImage("sa.jpg") ;
  ger = loadImage("ger.jpg");
  fra = loadImage("fra.jpg");
  uk = loadImage("uk.jpg");
  irl = loadImage("irl.jpg");
  plane = new Plane(width/2, height/2+50, 0, 30) ;
  loadData();
}

boolean starting = false;
PImage world ;
PImage usa ;
PImage aus ;
PImage sa ;
PImage ger ;
PImage fra ;
PImage uk ;
PImage irl ;


Plane plane ;
boolean[] keys = new boolean[1000];

ArrayList<WORLD> data = new ArrayList<WORLD>();

void draw()
{
  stroke(0,255,0);
  fill(0,255,0);
  
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