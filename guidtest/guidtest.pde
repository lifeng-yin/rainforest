import g4p_controls.*;
int money = 0;

boolean home = true;
boolean cart = false;
boolean shop = false;
boolean sales = false;
boolean rain_forest_supreme_deals = false;
boolean rain_forest_supreme = false;



void setup() {
  size(800,600);
  createGUI();
  
}

void draw() {
  background(220);
  invisible_controls();
  stroke(0);
  line(0, 100, 800, 100);
  

  //println(Shop_button.getCX());
  
}
