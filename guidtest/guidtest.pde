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
  stroke(0);
  line(0, 100, 800, 100);
  
  textSize(45);
  fill(60, 60, 60);
  text("Check out our latest deals today!", 105, 150); 
  //println(Shop_button.getCX());
  
}
