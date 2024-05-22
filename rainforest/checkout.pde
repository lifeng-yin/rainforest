void checkout() {
    fill(0);
    textSize(40);
    text("Checkout", 50, 150);
    
    textSize(25);
    text(String.format("You have bought $%.2f of items.", subtotal * 1.13), 50, 200);
    text("They will arrive within 3-4 business days.", 50, 250);
    text(String.format("Your new balance is $%.2f", money), 50, 300);

}
