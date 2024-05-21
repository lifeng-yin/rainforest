void cart() {
    fill(0);
    textSize(50);
    text("My Cart", 50, 150);
    
    textSize(20);
    
    //prints items in cart if there is any
    if (productsInCart.size() == 0) {
      textSize(25);
      text("There's nothing in your cart. Shop for some more items!", 50, 180);
    }
   
    else {
      for (int i = 0; i < productsInCart.size(); i++) {
        Product p = productsInCart.get(i);
        text(p.name, 20, 170 + 50 * i);
        text(String.format("$%.2f", p.price), 150, 170 + 50 * i);
        
        text(String.format("x%d", p.quantity), 300, 170 + 50 * i);
      }
    }

    text(String.format("Subtotal: %.2f", subtotal), 50, 400);
    text(String.format("Total: %.2f", subtotal * 1.13), 50, 450);
}