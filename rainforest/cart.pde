void cart() {
    fill(0);
    textSize(50);
    text("My Cart", 50, 150);
    
    textSize(25);
    
    //prints items in cart if there is any
    if (productsInCart.size() == 0) {
      text("There's nothing in your cart. Shop for some more items!", 50, 180);
    }
   
    else {
      for (int i = 0; i < productsInCart.size(); i++) {
        Product p = productsInCart.get(i);
        fill(250);
        rect(40, 170 + 50 * i, 400, 40);

        fill(0);
        if (p.quantity > 1) {
          text(String.format("%s x %d", p.name, p.quantity), 50, 200 + 50 * i);
        }
        else {
          text(p.name, 50, 200 + 50 * i);
        }
        
        text(p.name, 50, 200 + 50 * i);
        text(String.format("$%.2f", p.price * p.quantity), 350, 200 + 50 * i);
      }
    }

    text(String.format("Subtotal: $%.2f", subtotal), 50, 500);
    text(String.format("Total: $%.2f", subtotal * 1.13), 50, 550);
}