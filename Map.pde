void viewscreen()
{
  background(0);
  loadData();
  border();
  screen_box();
  bcheck();
  rcheck();
  gcheck();
  colourbuttons();
}

void screen_box()
{
  float countryx ;
  float countryy ;
  fill(0);
  rect(width/20+15, height/25+5, width/20*17, height/20*18 );

  strokeWeight(.5);
  float wgridsize = width/20*17+width/20*17 ;
  float hgridsize = height/20*18+height/20*18 ;
  float wboxsize = wgridsize/120 ;
  float hboxsize = hgridsize/120 ;
  float rx = width/20+15, ry = height/25+5;
  
  for(int i = 0; i < 60; i++)
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
  
  for(int i = 0 ; i < data.size() ; i++)
  {
    countryx = (width/20+15)+((wboxsize)*(data.get(i).pointx)) ;
    countryy = (height/6*3)+((hboxsize)*(data.get(i).pointy)) ;
    ellipse(countryx, countryy, 5, 5);
    fill(main);
  }

}

//load data from file
void loadData()
{
  Table t = loadTable("world.csv");
  for(int i = 0 ; i < t.getRowCount() ; i++)
  {
    TableRow row = t.getRow(i);
    WORLD world = new WORLD(row);
    data.add(world);
  }
}