//the invisible controls function, is responsible for toggling different pages
void page_controls() {
  // home screen
  if (currentPage == "home") {
    Shop_button.setVisible(true);
    sales_button.setVisible(true);
    dollar_button.setVisible(true);
    RFSButton.setVisible(false);
    shippingOptionsButton.setVisible(false);

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
    // If there's more than 1 product bought, show shippingOptionsButton
    if (productsInCart.size() > 0) shippingOptionsButton.setVisible(true);
    cart();
  }
  else {
    shippingOptionsButton.setVisible(false);
  }
  
  // shipping options page
  if (currentPage == "shippingOptions") {
    shippingOptions();
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