void map()
{
  background(0);
  border();
  screen_box();
}

void grid()
{
  
}

void screen_box()
{
  rect(width/20+15, height/25+5, width/20*17 ,height/20*18 );
  fill(0);
  
  strokeWeight(.5);
  float wgridsize = (width/20*17) - (width/20+15) ;
  float hgridsize = (height/20*18) -(height/25+5) ;
  float boxsize = hgridsize/40 ;
  float rx = width/20+15, ry = height/25+5;
  
  for(int i = 0; i < wgridsize; i++)
  {
    line(rx, height/25+5, rx, height/20*18);
    rx = rx + boxsize ;
  }
  
  for(int i = 0; i < hgridsize; i++)
  {
    line(width/20+15, ry, width/20*17, ry);
    ry = ry + boxsize ;
  }
}