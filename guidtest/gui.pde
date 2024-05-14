/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void home_button_click(GImageButton source, GEvent event) { //_CODE_:home_button:581349:
  home = true;
  cart = false;
  shop = false;
  sales = false;
  rain_forest_supreme_deals = false;
  println("Home pressed");
} //_CODE_:home_button:581349:

public void my_cart_button_click1(GImageButton source, GEvent event) { //_CODE_:my_cart_button:649753:
  home = false;
  cart = true;
  shop = false;
  sales = false;
  rain_forest_supreme_deals = false;
  println("Cart pressed");
} //_CODE_:my_cart_button:649753:

public void ProfileButton_click(GImageButton source, GEvent event) { //_CODE_:ProfileButton:415454:
  //println("ProfileButton - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:ProfileButton:415454:

public void RFSButton_clicked(GButton source, GEvent event) { //_CODE_:RFSButton:727323:
  rain_forest_supreme = true;
  invisible_controls();
  RFSButton.setVisible(false);
  println("Upgraded to supreme");
} //_CODE_:RFSButton:727323:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:900822:
  //RainForest logo picture
} //_CODE_:imgButton1:900822:

public void supreme_deals_button_click1(GButton source, GEvent event) { //_CODE_:supreme_deals_button:437597:
  home = false;
  cart = false;
  sales = false;
  rain_forest_supreme_deals = true;
  println("supreme pressed");
} //_CODE_:supreme_deals_button:437597:

public void Shop_click1(GButton source, GEvent event) { //_CODE_:Shop_button:327819:
  home = false;
  cart = false;
  shop = true;
  sales = false;
  rain_forest_supreme_deals = false;
  println("shop pressed");
} //_CODE_:Shop_button:327819:

public void dollar_button_click1(GImageButton source, GEvent event) { //_CODE_:dollar_button:718026:
  money += 1000;
  println("You have " + str(money));
} //_CODE_:dollar_button:718026:

public void sales_button_click1(GButton source, GEvent event) { //_CODE_:sales_button:865886:
  home = false;
  cart = false;
  sales = true;
  rain_forest_supreme_deals = false;
  println("Sales pressed");
} //_CODE_:sales_button:865886:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  home_button = new GImageButton(this, 21, 16, 78, 75, new String[] { "homebuttonimg.png", "homebuttonimg.png", "homebuttonimg.png" } );
  home_button.addEventHandler(this, "home_button_click");
  my_cart_button = new GImageButton(this, 597, 36, 100, 60, new String[] { "checkoutbuttonimg.png", "checkoutbuttonimg.png", "checkoutbuttonimg.png" } );
  my_cart_button.addEventHandler(this, "my_cart_button_click1");
  ProfileButton = new GImageButton(this, 699, 36, 100, 60, new String[] { "profilepng.png", "profilepng.png", "profilepng.png" } );
  ProfileButton.addEventHandler(this, "ProfileButton_click");
  RFSButton = new GButton(this, -3, 519, 115, 83);
  RFSButton.setText("Upgrade to RainForest Supreme");
  RFSButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  RFSButton.addEventHandler(this, "RFSButton_clicked");
  imgButton1 = new GImageButton(this, 298, 0, 208, 99, new String[] { "rainforestlogopng.png", "rainforestlogopng.png", "rainforestlogopng.png" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
  supreme_deals_button = new GButton(this, 325, 314, 150, 85);
  supreme_deals_button.setText("RainForestSupreme deals");
  supreme_deals_button.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  supreme_deals_button.addEventHandler(this, "supreme_deals_button_click1");
  Shop_button = new GButton(this, 325, 195, 150, 85);
  Shop_button.setText("SHOP");
  Shop_button.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Shop_button.addEventHandler(this, "Shop_click1");
  dollar_button = new GImageButton(this, 676, 507, 123, 93, new String[] { "dollarimg.png", "dollarimg.png", "dollarimg.png" } );
  dollar_button.addEventHandler(this, "dollar_button_click1");
  sales_button = new GButton(this, 325, 442, 150, 85);
  sales_button.setText("Sales");
  sales_button.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sales_button.addEventHandler(this, "sales_button_click1");
}

// Variable declarations 
// autogenerated do not edit
GImageButton home_button; 
GImageButton my_cart_button; 
GImageButton ProfileButton; 
GButton RFSButton; 
GImageButton imgButton1; 
GButton supreme_deals_button; 
GButton Shop_button; 
GImageButton dollar_button; 
GButton sales_button; 

//SHOP PAGE


Product[] productsData = {
  new Product(1, "T-Shirt", "Comfortable cotton t-shirt", 20),
  new Product(2, "Jeans", "Classic denim jeans", 30),
  new Product(3, "Sneakers", "Stylish sneakers for everyday wear", 50)
};

Product selectedProduct = null;

void setup() {
  size(600, 400); 
  textAlign(LEFT, CENTER);
}

void draw() {
  background(255); 
  displayHeader(); 
  displayProducts(); 
}

void displayHeader() {
 //Header
  fill(0);
  textSize(24);
  text("Rainforest", 250, 30);

  fill(100, 200, 100); // Green color
  rect(20, 10, 80, 30); // Home button rectangle
  fill(255);
  textSize(16);
  text("Home", 60, 25);

  //shopping cart button
  fill(100, 200, 100); // Green color
  rect(width - 110, 10, 90, 30); 
  fill(255);
  textSize(16);
  text("Cart", width - 65, 25);
}

void displayProducts() {
  for (int i = 0; i < productsData.length; i++) {
    Product product = productsData[i];
    float x = 50 + i * 180;
    float y = 100;

    //product box
    fill(240);
    rect(x, y, 150, 120);

    //product name
    fill(0);
    textSize(16);
    text(product.getName(), x + 10, y + 20);

    //product description
    textSize(12);
    text(product.getDescription(), x + 10, y + 40, 130, 60);

    //product price
    textSize(14);
    text("$" + product.getPrice(), x + 10, y + 110);

    //"Add to Cart" button
    fill(100, 200, 100); // Green color
    rect(x + 10, y + 80, 130, 30); 
    fill(255);
    textSize(14);
    text("Add to Cart", x + 30, y + 90);
  }
}

void mousePressed() {
  //Checks if "Add to Cart" button is clicked
  for (int i = 0; i < productsData.length; i++) {
    float x = 50 + i * 180;
    float y = 100;

    if (mouseX > x + 10 && mouseX < x + 140 && mouseY > y + 80 && mouseY < y + 110) {
      selectedProduct = productsData[i];
      addToCart(selectedProduct);
    }
  }

  if (mouseX > 20 && mouseX < 100 && mouseY > 10 && mouseY < 40) {
    // Implement home button functionality (e.g., navigate to home page)
    println("Home button clicked");
  }

  if (mouseX > width - 110 && mouseX < width - 20 && mouseY > 10 && mouseY < 40) {
    // Implement shopping cart button functionality (e.g., view cart)
    println("Shopping cart button clicked");
  }
}

void addToCart(Product product) {
  if (product != null) {
    println("Added " + product.getName() + " to cart!");
  }
}

class Product {
  int id;
  String name;
  String description;
  int price;

  Product(int id, String name, String description, int price) {
    this.id = id;
    this.name = name;
    this.description = description;
    this.price = price;
  }

  String getName() {
    return name;
  }

  String getDescription() {
    return description;
  }

  int getPrice() {
    return price;
  }
}
