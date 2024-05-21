//the product class
class Product {
  //fields
  int id;
  String name;
  String description;
  float price;
  int x;
  int y;
  int quantity = 0;

  //constructurs
  Product(int id, String name, String description, float price) {
    this.id = id;
    this.name = name;
    this.description = description;
    this.price = price;
    
    this.x = 50 + (id % 4) * 180;
    this.y = 255 + 180 * floor(id / 4.0);
  }
}

//methods
void displayProducts() {
  scrollbar.draw();

  //prints all products
  for (int i = 0; i < productsData.length; i++) {
    Product product = productsData[i];
    
    float newY = product.y - scrollbar.yOffset;

    //product box
    fill(240);
    rect(product.x, newY, 150, 120);

    //product name
    fill(0);
    textSize(16);
    text(product.name, product.x + 10, newY + 20);

    //product description
    textSize(12);
    text(product.description, product.x + 10, newY + 40, 130, 60);

    //product price
    textSize(14);
    text("$" + product.price, product.x + 10, newY + 110);
    

    // buy button
    fill(0, 140, 200);
    rect(product.x+75, newY + 85, 70, 30, 5);
    fill(255);
    text("Purchase", product.x+85, newY + 105);
  }
}

//displays the sales
void displaySaleProducts() {
  scrollbar.draw();

  //find cheap products
  for (int i = 0; i < productsData.length/3; i++) {
    Product product = productsData[i*2];
    
    float newY = product.y - scrollbar.yOffset;

    //product box
    fill(240);
    rect(product.x, newY, 150, 120);

    //product name
    fill(0);
    textSize(16);
    text(product.name, product.x + 10, newY + 20);

    //product description
    textSize(12);
    text(product.description, product.x + 10, newY + 40, 130, 60);

    //product price
    textSize(14);
    text("$" + product.price, product.x + 10, newY + 110);
    

    // buy button
    fill(0, 140, 200);
    rect(product.x+75, newY + 85, 70, 30, 5);
    fill(255);
    text("Purchase", product.x+85, newY + 105);
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
