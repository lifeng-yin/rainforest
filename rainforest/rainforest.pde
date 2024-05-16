import g4p_controls.*;
int money = 0;

Product[] productsData = {
  new Product(1, "T-Shirt", "Comfortable cotton t-shirt", 20),
  new Product(2, "Jeans", "Classic denim jeans", 30),
  new Product(3, "Sneakers", "Stylish sneakers for everyday wear", 50),
  new Product(4, "T-Shirt", "Comfortable cotton t-shirt", 20),
  new Product(5, "Jeans", "Classic denim jeans", 30),
  new Product(6, "Sneakers", "Stylish sneakers for everyday wear", 50),
  new Product(7, "T-Shirt", "Comfortable cotton t-shirt", 20),
  new Product(8, "Jeans", "Classic denim jeans", 30),
  new Product(9, "Sneakers", "Stylish sneakers for everyday wear", 50),
  new Product(10, "T-Shirt", "Comfortable cotton t-shirt", 20),
  new Product(11, "Jeans", "Classic denim jeans", 30),
  new Product(12, "Sneakers", "Stylish sneakers for everyday wear", 50),
  new Product(13, "T-Shirt", "Comfortable cotton t-shirt", 20),
  new Product(14, "Jeans", "Classic denim jeans", 30),
  new Product(15, "Sneakers", "Stylish sneakers for everyday wear", 50),
  new Product(16, "T-Shirt", "Comfortable cotton t-shirt", 20),
  new Product(17, "Jeans", "Classic denim jeans", 30),
  new Product(18, "Sneakers", "Stylish sneakers for everyday wear", 50)
};

Product selectedProduct = null;

boolean home = true;
boolean cart = false;
boolean shop = false;
boolean sales = false;
boolean rain_forest_supreme_deals = false;
boolean rain_forest_supreme = false;


ArrayList<Product> productsInCart = new ArrayList();

void setup() {
  size(800,600);
  createGUI();
  println(2%3);
  
  
  
}

void draw() {
  background(220);
  invisible_controls();
  stroke(0);
  line(0, 100, 800, 100);
  //Shop_button.moveTo(100, 50);
  

  //println(Shop_button.getCX());
  
}
