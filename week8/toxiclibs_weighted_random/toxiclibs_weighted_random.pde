import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  fill(255);

  WeightedRandomSet<String> countries = new WeightedRandomSet<String>();

  countries.add("USA", 50);
  countries.add("Denmark", 10);
  countries.add("France", 20);

  String country = countries.getRandom();
  
  text(country, width / 2, height /2);	
  //saveFrame("toxiclibs_circles.jpg");
  
  WeightedRandomSet<String> kolors = new WeightedRandomSet<String>();
  
  kolors.add("#6CA94A",4);
  kolors.add("#FCEA24",3);
  kolors.add("#D52309",2);
  kolors.add("#B5C3CC",2);
  
  String kolor = kolors.getRandom();
  text(kolor, width / 3, height /3);	
}

