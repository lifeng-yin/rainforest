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
  }
  
