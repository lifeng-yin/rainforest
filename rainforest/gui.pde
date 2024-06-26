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

public void my_cart_button_click1(GImageButton source, GEvent event) { //_CODE_:my_cart_button:649753:
  currentPage = "cart";
  
  subtotal = 0;
  // Calculate subtotal
  for (Product p : productsInCart) {
    subtotal += p.price * p.quantity;
  }


} //_CODE_:my_cart_button:649753:

public void ProfileButton_click(GImageButton source, GEvent event) { //_CODE_:ProfileButton:415454:
  //println("ProfileButton - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:ProfileButton:415454:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:900822:
  // RainForest logo picture
  currentPage = "home";
} //_CODE_:imgButton1:900822:

public void Shop_click1(GButton source, GEvent event) { //_CODE_:Shop_button:327819:
  currentPage = "shop";
  //println( Shop_button.
} //_CODE_:Shop_button:327819:

public void dollar_button_click1(GImageButton source, GEvent event) { //_CODE_:dollar_button:718026:
  money += 1000;
} //_CODE_:dollar_button:718026:

public void sales_button_click1(GButton source, GEvent event) { //_CODE_:sales_button:865886:
  currentPage = "sales";
} //_CODE_:sales_button:865886:

public void checkoutButtonClicked(GButton source, GEvent event) { //_CODE_:checkoutButton:842274:
  println("checkoutButton - GButton >> GEvent." + event + " @ " + millis());
  currentPage = "shippingOptions";
  // subtract money by total including tax
  money -= subtotal * 1.13;
} //_CODE_:checkoutButton:842274:

public void homeButtonClicked(GImageButton source, GEvent event) { //_CODE_:homeButton:960481:
  println("imgButton2 - GImageButton >> GEvent." + event + " @ " + millis());
  currentPage = "home";
} //_CODE_:homeButton:960481:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:545281:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button1:545281:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  my_cart_button = new GImageButton(this, 597, 36, 100, 60, new String[] { "checkoutbuttonimg.png", "checkoutbuttonimg.png", "checkoutbuttonimg.png" } );
  my_cart_button.addEventHandler(this, "my_cart_button_click1");
  ProfileButton = new GImageButton(this, 699, 36, 100, 60, new String[] { "profilepng.png", "profilepng.png", "profilepng.png" } );
  ProfileButton.addEventHandler(this, "ProfileButton_click");
  imgButton1 = new GImageButton(this, 300, 1, 208, 99, new String[] { "rainforestlogopng.png", "rainforestlogopng.png", "rainforestlogopng.png" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
  Shop_button = new GButton(this, 324, 252, 150, 85);
  Shop_button.setText("SHOP");
  Shop_button.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Shop_button.addEventHandler(this, "Shop_click1");
  dollar_button = new GImageButton(this, 676, 507, 123, 93, new String[] { "dollarimg.png", "dollarimg.png", "dollarimg.png" } );
  dollar_button.addEventHandler(this, "dollar_button_click1");
  sales_button = new GButton(this, 325, 378, 150, 85);
  sales_button.setText("Sales");
  sales_button.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sales_button.addEventHandler(this, "sales_button_click1");
  checkoutButton = new GButton(this, 662, 557, 80, 30);
  checkoutButton.setText("Checkout");
  checkoutButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  checkoutButton.addEventHandler(this, "checkoutButtonClicked");
  homeButton = new GImageButton(this, 12, 18, 84, 71, new String[] { "homebuttonimg.png", "homebuttonimg.png", "homebuttonimg.png" } );
  homeButton.addEventHandler(this, "homeButtonClicked");
  button1 = new GButton(this, -5, 523, 100, 80);
  button1.setText("Upgrade to Rainforest Supreme");
  button1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button1.addEventHandler(this, "button1_click1");
}

// Variable declarations 
// autogenerated do not edit
GImageButton my_cart_button; 
GImageButton ProfileButton; 
GImageButton imgButton1; 
GButton Shop_button; 
GImageButton dollar_button; 
GButton sales_button; 
GButton checkoutButton; 
GImageButton homeButton; 
GButton button1; 
