class Product {
  int id;
  String name;
  String description;
  int price;

  Product(int id, String name, String description, int price) {
    this.id = id;
    this.name = name;
    this.description = description;
    this.price = price;
  }

  String getName() {
    return name;
  }

  String getDescription() {
    return description;
  }

  int getPrice() {
    return price;
  }
}  

void addToCart(Product product) {
  if (product != null) {
    println("Added " + product.getName() + " to cart!");
  }
}

void displayProducts() {
  for (int i = 0; i < productsData.length; i++) {
    Product product = productsData[i];
    float x = 50 + i * 180;
    float y = 100;

    //product box
    fill(240);
    rect(x, y, 150, 120);

    //product name
    fill(0);
    textSize(16);
    text(product.getName(), x + 10, y + 20);

    //product description
    textSize(12);
    text(product.getDescription(), x + 10, y + 40, 130, 60);

    //product price
    textSize(14);
    text("$" + product.getPrice(), x + 10, y + 110);

    //"Add to Cart" button
    fill(100, 200, 100); // Green color
    rect(x + 10, y + 80, 130, 30); 
    fill(255);
    textSize(14);
    text("Add to Cart", x + 30, y + 90);
  }
}
