// home page
void home() {
    textSize(45);
    fill(60, 60, 60);
    text("Check out our latest deals today!", 105, 170);

    // button to get rainforest supreme
    if (hasRainforestSupreme == false){
      RFSButton.setVisible(true);
    }
    // upgraded message
    else {
      textSize(25);
      fill(60, 60, 60);
      text("You are upgraded to", 10, 550); 
      text("RainForest Supreme!", 10, 575); 
    }
}
