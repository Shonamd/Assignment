void map()
{
  background(0);
  border();
  screen_box();
  unitcirc();
}

void screen_box()
{
  rect(width/20+15, height/25+5, width/20*17, height/20*18 );
  fill(0);
  
  strokeWeight(.5);
  float wgridsize = width/20*17+width/20*17 ;
  float hgridsize = height/20*18+height/20*18 ;
  float wboxsize = wgridsize/60 ;
  float hboxsize = hgridsize/60 ;
  float rx = width/20+15, ry = height/25+5;
  
  for(int i = 0; i < 30; i++)
  {
    while(i<6)
    {
      line(rx, height/25+5, rx+80, height/25+5+height/20*18 );
      rx = rx + wboxsize ; 
    }
    line(rx, height/25+5, rx, height/25+5+height/20*18 );
    rx = rx + wboxsize ;
  }
  
  for(int i = 0; i < 60; i++)
  {
    line(width/20+15, ry, width/20+15+width/20*17, ry);
    ry = ry + hboxsize ;
  }
  
}

void unitcirc()
{
  rect(width/25+20, height/25+5, 80, 80);
  fill(0);

}