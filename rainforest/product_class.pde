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

  void draw(float scrollbarOffset) {
    float newY = this.y - scrollbarOffset;
    //product box
    fill(240);
    rect(this.x, newY, 150, 120);

    //product name
    fill(0);
    textSize(16);
    text(this.name, this.x + 10, newY + 20);

    //product description
    textSize(12);
    text(this.description, this.x + 10, newY + 40, 130, 60);

    //product price
    textSize(14);
    text("$" + this.price, this.x + 10, newY + 110);
    

    // buy button fill, green if bought at least once, blue if not purchased
    if (this.quantity >= 1) fill(0, 200, 100);
    else fill(0, 140, 200);

    // rounded rectangle for the button, slightly longer if bought more than 1 and quantity needs to be displayed
    if (this.quantity >= 2) rect(this.x + 54, newY + 85, 92, 30, 5);
    else rect(this.x + 68, newY + 85, 78, 30, 5);

    fill(255);

    if (this.quantity >= 2) text("Purchased x" + this.quantity, this.x+65, newY + 105);
    else if (this.quantity == 1) text("Purchased", this.x+78, newY + 105);
    else text("Purchase", this.x+82, newY + 105);
  }
}

//methods
void displayProducts() {
  scrollbar.draw();

  //prints all products
  for (int i = 0; i < productsData.length; i++) {
    productsData[i].draw(scrollbar.yOffset);
  }  
}

//displays the sales
void displaySaleProducts() {
  scrollbar.draw();

  //find cheap products
  for (int i = 0; i < productsData.length/3; i++) {
    Product product = productsData[i*2];
    product.draw(scrollbar.yOffset);
  }
}
