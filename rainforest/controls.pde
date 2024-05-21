void invisible_controls() {
  // home screen
  if (home == true) {
    textSize(45);
    fill(60, 60, 60);
    text("Check out our latest deals today!", 105, 150); 
    Shop_button.setVisible(true);
    supreme_deals_button.setVisible(true);
    sales_button.setVisible(true);
    dollar_button.setVisible(true);
    checkoutButton.setVisible(false);
    if (rain_forest_supreme == false){
      RFSButton.setVisible(true);
    }
    else {
      textSize(25);
      fill(60, 60, 60);
      text("You are upgraded to", 10, 550); 
      text("RainForest Supreme!", 10, 575); 
    }
  }
  else {
    Shop_button.setVisible(false);
    supreme_deals_button.setVisible(false);
    sales_button.setVisible(false);
    dollar_button.setVisible(false);
    RFSButton.setVisible(false);
  }
  
  if (cart == true) {
    fill(0);
    textSize(50);
    text("My Cart", 50, 150);
    
    
    if (productsInCart.size() == 0) {
      textSize(25);
      text("There's nothing in your cart. Shop for some more items!", 50, 180);
    }
   
    else {
      float total = 0;
      
      for (Product p: productsInCart ) {
        textSize(20);
        text(p.name, 20, 170 + 50 * p.id);
        text(String.format("$%.2f", p.price), 150, 170 + 50 * p.id);
        
        text(String.format("x%d", p.quantity), 300, 170 + 50 * p.id);
        total += p.price * p.quantity;
      }
      
      text(String.format("Total: $%.2f", total), 50, 550);
    }
    checkoutButton.setVisible(true);
  }
  
  else if (checkout == true) {
    checkoutButton.setVisible(false);
    fill(0);
    textSize(40);
    text(String.format("You have bought %.2f of items.", total), 100, 200);
    money -= total;
    text(String.format("Your new balance is %.2f", total), 100, 300);
  }
  
  else if (shop == true) {
    displayProducts();
  }
}
  
void mouseDragged() {
  if (shop == true) {
    scrollbar.mouseDragged();
  }
}
