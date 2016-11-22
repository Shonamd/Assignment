void viewscreen()
{
  background(0);
  border();
  screen_box();
  bcheck();
  rcheck();
  gcheck();
  colourbuttons();
}

void screen_box()
{
  fill(0);
  rect(width/20+15, height/25+5, width/20*17, height/20*18 );

  strokeWeight(.5);
  float wgridsize = width/20*17+width/20*17 ;
  float hgridsize = height/20*18+height/20*18 ;
  float wboxsize = wgridsize/60 ;
  float hboxsize = hgridsize/60 ;
  float rx = width/20+15, ry = height/25+5;
  
  for(int i = 0; i < 30; i++)
  {
    line(rx, height/25+5, rx, height/25+5+height/20*18 );
    rx = rx + wboxsize ;
  }
  
  for(int i = 0; i < 60; i++)
  {
    line(width/20+15, ry, width/20+15+width/20*17, ry);
    ry = ry + hboxsize ;
  }
  
  //load map image
  world.resize(width/20*17, height/5*2);
  image(world, width/20+15, height/6*3);

}

void colourbuttons()
{
  //make colour buttons
  strokeWeight(1.5);
  
  //button check
  stroke(blue);
  if( bcheck == true)
  {
    fill(blue);
    ellipse(12, 15, 16, 16);
  }
  else
  {
    fill(0);
    ellipse(12, 15, 16, 16);
  }
  
  stroke(red);
  if (rcheck == true)
  {
    fill(red);
    ellipse(12, 40, 16, 16);
  }
  else
  {
    fill(0);
    ellipse(12, 40, 16, 16);
  }
  
  stroke(green);
  if (gcheck == true)
  {
    fill(green);
    ellipse(12, 65, 16, 16);
  }
  else
  {
    fill(0);
    ellipse(12, 65, 16, 16);
  }      
}