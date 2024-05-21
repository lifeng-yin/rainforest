void home() {
    textSize(45);
    fill(60, 60, 60);
    text("Check out our latest deals today!", 105, 150);

    if (hasRainforestSupreme == false){
      RFSButton.setVisible(true);
    }
    else {
      textSize(25);
      fill(60, 60, 60);
      text("You are upgraded to", 10, 550); 
      text("RainForest Supreme!", 10, 575); 
    }
}