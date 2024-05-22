// functions that trigger on mouse movement / click

void mouseDragged() {
  // calls the scrollbar's mouseDragged method
  if (currentPage == "shop" || currentPage == "sales") {
    scrollbar.mouseDragged();
  }
}

// handles purchase button logic for the products and sales pages
void mousePressed() {
  // loop over each product
  for (Product p: productsData) {
    // check if x is in the range
    if (p.x + 75 < mouseX && mouseX < p.x + 145) {
      // calculate y based on the current scroll
      float newY = p.y - scrollbar.yOffset;
      // check if y is within the range
      if (newY + 85 < mouseY && mouseY < newY + 115) {

        // if the product was already purchased, just increase the quantity
        if (productsInCart.contains(p)) {
          productsInCart.get(productsInCart.indexOf(p)).quantity += 1;
        }
    
        // otherwise, add it to the productsInCart list
        else {
          p.quantity = 1;
          productsInCart.add(p);
        }
      }
    }
  }
}