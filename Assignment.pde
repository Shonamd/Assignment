void setup()
{
  size(500, 500);
  background(0);
}

void grid()
{
  strokeWeight(.5);
  stroke(7, 148, 175);
  float wgridsize = width ;
  float hgridsize = height ;
  float boxsize = height/40 ;
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

void draw()
{
  opening();
}
 
void opening()
{
  background(0);
  stroke(7, 148, 175);
  line((width/20),(height/25),(width/20),(height/25*24));
  line((width/20+5),(height/25),(width/20+5),(height/25*24));
  line((width/20*19),(height/25),(width/20*19),(height-20));
  line((width/20*19+5),(height/25),(width/20*19+5),(height/25*24));
  line((width/20),(height/20-10),(width-20),(height/20-10));
  line((width/20),(height/20-15),(width-20),(height/20-15));
  line((width/20),(height/25*24+5),(width-20),(height/25*24+5));  
  line((width/20),(height/25*24+10),(width-20),(height/25*24+10));  

}