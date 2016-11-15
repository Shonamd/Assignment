void setup()
{
  size(500, 500);
  background(0);
  grid();
}

void grid()
{
  strokeWeight(.5);
  stroke(7, 148, 175);
  float wgridsize = width ;
  float hgridsize = height ;
  float boxsize = height/100 ;
  float rx = 0, ry = 0;
  
  for(int i = 0; i < wgridsize; i++)
  {
    line(rx, 0, rx, height);
    rx = rx + boxsize ;
  }
  
  for(int i = 0; i < hgridsize; i++)
  {
    line(0, ry, width, ry);
    ry = ry + boxsize ;
  }
  
}