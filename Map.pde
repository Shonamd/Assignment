void viewscreen()
{
  background(0);
  //loadData();
  border();
  screen_box();
  mappoints();
  bcheck();
  rcheck();
  gcheck();
  colourbuttons();
  plane.update();
  plane.render();
  //wrap feature
  if(plane.pos.y >= height/6*3+height/5*2)
  {
    plane.pos.y = height/6*3;
  }
  if(plane.pos.y <= height/6*3-5)
  {
    plane.pos.y = height/6*3+height/5*2-20;
  }
  if(plane.pos.x <= width/20+5)   
  {
    plane.pos.x = width/20+15+width/20*17-5 ;
  }
  if(plane.pos.x >= width/20*19)
  {
    plane.pos.x = width/20+15+5;
  }
}

void screen_box()
{
  fill(0);
  rect(width/20+15, height/25+5, width/20*17, height/20*18 );

  strokeWeight(.5);
  float wgridsize = width/20*17+width/20*17 ;
  float hgridsize = height/20*18+height/20*18 ;
  float wboxsize = wgridsize/120 ;
  float hboxsize = hgridsize/120 ;
  float rx = width/20+15, ry = height/6*3;
  
  for(int i = 0; i < 60; i++)
  {
    line(rx, height/6*3, rx, height/6*3+height/5*2);
    rx = rx + wboxsize ;
  }
  
  for(int i = 0; i < 27; i++)
  {
    line(width/20+15, ry, width/20+15+width/20*17, ry);
    ry = ry + hboxsize ;
  }
  
  //load map image
  world.resize(width/20*17, height/5*2);
  image(world, width/20+15, height/6*3);

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

void mappoints()
{
  fill(main);
  stroke(main);
  float countryx ;
  float countryy ;
  float wgridsize = width/20*17+width/20*17 ;
  float hgridsize = height/20*18+height/20*18 ;
  float wboxsize = wgridsize/120 ;
  float hboxsize = hgridsize/120 ;
  
  for(int i = 0 ; i < data.size() ; i++)
  {
    countryx = (width/20+15)+((wboxsize)*(data.get(i).pointx)-3) ;
    countryy = (height/6*3)+((hboxsize)*(data.get(i).pointy)+3);
    ellipse(countryx, countryy, 5, 5) ;
    
    if(dist(countryx, countryy, plane.pos.x, plane.pos.y) < 5)
    {
      info();
    } 
  }
  
}

void info()
{
  regular = createFont("Candara", 10);
  
  textFont(regular);
  
  float wgridsize = width/20*17+width/20*17 ;
  float hgridsize = height/20*18+height/20*18 ;
  float wboxsize = wgridsize/120 ;
  float hboxsize = hgridsize/120 ;
  
  text("Name of area", 50, 40);
  text("Currency used", 50, 50);
  text("Population", 50, 60);
  text("Notable areas", 50, 70);
  
  //Ireland
  if(dist((width/20+15)+((wboxsize)*(data.get(0).pointx)-3), (height/6*3)+((hboxsize)*(data.get(0).pointy)+3), plane.pos.x, plane.pos.y) < 5)
  {
    text(data.get(0).name, 150, 40);
    text(data.get(0).currency, 150, 50);
    text(data.get(0).population, 150, 60);
    text(data.get(0).notable, 150, 70);
    irl.resize(width/5*2, height/5*2);
    image(irl, width/2, 40);
  }
  //UK
  if(dist((width/20+15)+((wboxsize)*(data.get(1).pointx)-3), (height/6*3)+((hboxsize)*(data.get(1).pointy)+3), plane.pos.x, plane.pos.y) < 5)
  {
    text(data.get(1).name, 150, 40);
    text(data.get(1).currency, 150, 50);
    text(data.get(1).population, 150, 60);
    text(data.get(1).notable, 150, 70);
    uk.resize(width/5*2, height/5*2);
    image(uk, width/2, 40);
  }
  //USA
  if(dist((width/20+15)+((wboxsize)*(data.get(2).pointx)-3), (height/6*3)+((hboxsize)*(data.get(2).pointy)+3), plane.pos.x, plane.pos.y) < 5)
  {
    text(data.get(2).name, 150, 40);
    text(data.get(2).currency, 150, 50);
    text(data.get(2).population, 150, 60);
    text(data.get(2).notable, 150, 70);
    usa.resize(width/5*2, height/5*2);
    image(usa, width/2, 40);
  }
  //France
  if(dist((width/20+15)+((wboxsize)*(data.get(3).pointx)-3), (height/6*3)+((hboxsize)*(data.get(3).pointy)+3), plane.pos.x, plane.pos.y) < 5)
  {
    text(data.get(3).name, 150, 40);
    text(data.get(3).currency, 150, 50);
    text(data.get(3).population, 150, 60);
    text(data.get(3).notable, 150, 70);
    fra.resize(width/5*2, height/5*2);
    image(fra, width/2, 40);
  }
  //Germany
  if(dist((width/20+15)+((wboxsize)*(data.get(4).pointx)-3), (height/6*3)+((hboxsize)*(data.get(4).pointy)+3), plane.pos.x, plane.pos.y) < 5)
  {
    text(data.get(4).name, 150, 40);
    text(data.get(4).currency, 150, 50);
    text(data.get(4).population, 150, 60);
    text(data.get(4).notable, 150, 70);
    ger.resize(width/5*2, height/5*2);
    image(ger, width/2, 40);
  }
  //Africa
  if(dist((width/20+15)+((wboxsize)*(data.get(5).pointx)-3), (height/6*3)+((hboxsize)*(data.get(5).pointy)+3), plane.pos.x, plane.pos.y) < 5)
  {
    text(data.get(5).name, 150, 40);
    text(data.get(5).currency, 150, 50);
    text(data.get(5).population, 150, 60);
    text(data.get(5).notable, 150, 70);
    sa.resize(width/5*2, height/5*2);
    image(sa, width/2, 40);
  }
  //Australia
  if(dist((width/20+15)+((wboxsize)*(data.get(6).pointx)-3), (height/6*3)+((hboxsize)*(data.get(6).pointy)+3), plane.pos.x, plane.pos.y) < 5)
  {
    text(data.get(6).name, 150, 40);
    text(data.get(6).currency, 150, 50);
    text(data.get(6).population, 150, 60);
    text(data.get(6).notable, 150, 70);
    aus.resize(width/5*2, height/5*2);
    image(aus, width/2, 40);
  }
}