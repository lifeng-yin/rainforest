// My cart page
void cart() {
    fill(0);
    textSize(50);
    text("My Cart", 50, 150);
    
    textSize(25);
    
    // no items in cart :((((( message
    if (productsInCart.size() == 0) {
      text("There's nothing in your cart. Shop for some more items!", 50, 200);
    }
   
    else {
      // loop over each product
      for (int i = 0; i < productsInCart.size(); i++) {
        Product p = productsInCart.get(i);

        fill(250);
        // rectangle around the cart items
        // the y-value of this and text is based on the index of the cart
        rect(40, 170 + 50 * i, 400, 40);

        fill(0);
        // more than one item
        if (p.quantity > 1) {
          // looks like T-Shirt x 5
          text(String.format("%s x %d", p.name, p.quantity), 50, 200 + 50 * i);
        }
        // only one item
        else {
          text(p.name, 50, 200 + 50 * i);
        }
        
        text(p.name, 50, 200 + 50 * i);
        text(String.format("$%.2f", p.price * p.quantity), 350, 200 + 50 * i);
      }
    }

    // text with subtotal and calculated total.
    text(String.format("Subtotal: $%.2f", subtotal), 50, 500);
    text(String.format("Total: $%.2f", subtotal * 1.13), 50, 550);
}