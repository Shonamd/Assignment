boolean starting = false ;

void setup()
{
  size(500, 500, P3D);
  background(0);
}

void draw()
{
  if( starting == false)
  {
    opening();
  }
  
  else if( starting == true)
  {
    map();
  }
}
 