class WORLD
{
  String name ;
  String currency ;
  float population ;
  String notable ;
  
  WORLD(String line)
  {
    String[] fields = line.split(",");
    name = fields[0] ;
    currency = fields[1] ;
    population = Float.parseFloat(fields[2]) ;
    notable = fields[3] ;
  }
  
  WORLD(TableRow row)
  {
    name = row.getString(0);
    currency = row.getString(1);
    population = row.getFloat(2);
    notable = row.getString(3);
  }
}