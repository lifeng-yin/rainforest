//the invisible controls function, is responsible for toggling different pages
void invisible_controls() {
  // home screen
  if (currentPage == "home") {
    Shop_button.setVisible(true);
    sales_button.setVisible(true);
    dollar_button.setVisible(true);
    RFSButton.setVisible(false);
    shippingOptionsButton.setVisible(false);

    home();
  }
  //deactivates home screen
  else {
    
    Shop_button.setVisible(false);
    sales_button.setVisible(false);
    dollar_button.setVisible(false);
    RFSButton.setVisible(false);
  }
  
  //my cart screen
  if (currentPage == "cart") {
    shippingOptionsButton.setVisible(true);
    cart();
  }
  else {
    shippingOptionsButton.setVisible(false);
  }
  
  if (currentPage == "shippingOptions") {
    fill(0);
    textSize(40);
    text(String.format("You have bought %.2f of items.", subtotal * 1.13), 100, 200);
    // text(String.format("Your new balance is %.2f", money), 100, 300);
  }
  
  //displays products if shop is true
  if (currentPage == "shop") {
    displayProducts();
  }
  
  //displays sales if sales is true
  if (currentPage == "sales") {
    displaySaleProducts();
  }
}

  
void mouseDragged() {
  if (currentPage == "shop" || currentPage == "sales") {
    scrollbar.mouseDragged();
  }
}
