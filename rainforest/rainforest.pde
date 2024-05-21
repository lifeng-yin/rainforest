import g4p_controls.*;
int money = 0;

Product[] productsData = {
  new Product(0, "T-Shirt", "Comfortable cotton t-shirt", 20),
  new Product(1, "Soccer Ball", "Classic ball for soccer", 20),
  new Product(2, "Jeans", "Classic denim jeans", 30),
  new Product(3, "Sneakers", "Stylish sneakers for everyday wear", 50),
  new Product(4, "Desk", "60 in wide, 29 in high table desk", 20),
  new Product(5, "Watch", "Black mechanical watch", 30),
  new Product(6, "Computer", "Apple Computer", 50),
  new Product(7, "Speaker", "90 dB loud speaker", 20),
  new Product(8, "Chair", "Black meal chair", 30),
  new Product(9, "Bracelet", "Unisex silver bracelet", 50),
  new Product(10, "Book", "Harry Potter and the Cursed Child", 20),
  new Product(11, "Waterbottle", "Metal waterbottle with a straw", 30),
  new Product(12, "Backpack", "Black Adidas backpack", 50),
  new Product(13, "Binder", "9x12 in binder", 20),
  new Product(14, "Pencil Case", "Pencil case for school", 30),
  new Product(15, "Slides", "Comfortable slippers for summer", 50),
  new Product(16, "Headphones", "Regular wired headphones", 20),
  new Product(17, "Cologne", "Mens everyday scent", 30)
};

Product selectedProduct = null;

boolean home = true;
boolean cart = false;
boolean shop = false;
boolean sales = false;
boolean rain_forest_supreme_deals = false;
boolean rain_forest_supreme = false;

Scrollbar scrollbar = new Scrollbar();

ArrayList<Product> productsInCart = new ArrayList();

void setup() {
  size(800,600);
  createGUI();
}

void draw() {
  background(220);
  
  invisible_controls();
  
  noStroke();
  fill(220);
  rect(0, 0, width, 100);
  
  stroke(0);
  line(0, 100, 800, 100);
  //Shop_button.moveTo(100, 50);
  
  

  //println(Shop_button.getCX());
  
}
