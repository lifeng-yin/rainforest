//imports controls 
import g4p_controls.*;

//money variable
int money = 0;

//products
Product[] productsData = {
  new Product(0, "T-Shirt", "Comfortable cotton t-shirt", 4.99),
  new Product(1, "Soccer Ball", "Classic ball for soccer", 19.99),
  new Product(2, "Jeans", "Classic denim jeans", 11.99),
  new Product(3, "Sneakers", "Stylish sneakers for everyday wear", 49.99),
  new Product(4, "Desk", "60 in wide, 29 in high table desk", 12.99),
  new Product(5, "Watch", "Black mechanical watch", 28.49),
  new Product(6, "Computer", "Apple Computer", 42.99),
  new Product(7, "Speaker", "90 dB loud speaker", 19.99),
  new Product(8, "Chair", "Black meal chair", 12.99),
  new Product(9, "Bracelet", "Ancient silver souvenir", 44.99),
  new Product(10, "Book", "Harry Potter and the Cursed Child", 18.99),
  new Product(11, "Waterbottle", "Metal waterbottle with a straw", 18.99),
  new Product(12, "Backpack", "Black Adidas backpack", 48.99),
  new Product(13, "Binder", "9x12 in binder", 17.99),
  new Product(14, "Pencil Case", "Small pink pencil case for school", 12.99),
  new Product(15, "Slides", "Comfortable slippers for summer", 16.99),
  new Product(16, "Headphones", "Noise-cancelling wired headphones", 89.99),
  new Product(17, "Cologne", "2-Pack, Mens' everyday scent", 28.99)
};

Product selectedProduct = null;

//different pages
boolean home = true;
boolean cart = false;
boolean shop = false;
boolean sales = false;
boolean rain_forest_supreme_deals = false;
boolean rain_forest_supreme = false;
boolean checkout = false;

//scroll bar class
Scrollbar scrollbar = new Scrollbar();

ArrayList<Product> productsInCart = new ArrayList();

//set up the code
void setup() {
  size(800,600);
  createGUI();
}

//draws everything
void draw() {
  background(220);
  
  //toggles different pages depending on which page is true or false
  invisible_controls();
  
  //draws the header
  noStroke();
  fill(220);
  rect(0, 0, width, 100);
  
  stroke(0);
  line(0, 100, 800, 100);
}
