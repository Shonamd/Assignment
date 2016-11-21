void map()
{
  background(0);
  border();
  screen_box();
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

void screen_box()
{
   rect(width/20+15, height/25+5, width/20*19-15 ,height/25*24-15 );
   fill(0);
}