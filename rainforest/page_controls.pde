//the invisible controls function, is responsible for toggling different pages
void page_controls() {
  // home screen
  if (currentPage == "home") {
    Shop_button.setVisible(true);
    sales_button.setVisible(true);
    dollar_button.setVisible(true);
    RFSButton.setVisible(false);
    checkoutButton.setVisible(false);
    
    if (hasRainforestSupreme == false){
      RFSButton.setVisible(true);
    }
    else {
      textSize(25);
      fill(60, 60, 60);
      text("You are upgraded to", 10, 550); 
      text("RainForest Supreme!", 10, 575); 
    }

    home();
    
    

  }

  //deactivates home screen, hides all of the buttons
  else {
    Shop_button.setVisible(false);
    sales_button.setVisible(false);
    dollar_button.setVisible(false);
    RFSButton.setVisible(false);
  }
  
  // My cart screen
  if (currentPage == "cart") {
    // If there's more than 1 product bought, show checkoutButton
    if (productsInCart.size() > 0) checkoutButton.setVisible(true);
    cart();
  }
  else {
    checkoutButton.setVisible(false);
  }
  
  // shipping options page
  if (currentPage == "shippingOptions") {
    checkout();
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
