void mouseDragged() {
  if (currentPage == "shop" || currentPage == "sales") {
    scrollbar.mouseDragged();
  }
}

void mousePressed() {
  for (Product p: productsData) {
    if (p.x + 75 < mouseX && mouseX < p.x + 145) {
      float newY = p.y - scrollbar.yOffset;
      if (newY + 85 < mouseY && mouseY < newY + 115) {
        if (productsInCart.contains(p)) {
          productsInCart.get(productsInCart.indexOf(p)).quantity += 1;
        }
        else {
          p.quantity = 1;
          productsInCart.add(p);
        }
      }
    }
  }
}