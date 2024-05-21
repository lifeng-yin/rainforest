class Scrollbar {
  int yOffset;
  int yHeight;
  
  Scrollbar() {
    this.yOffset = 100;
    this.yHeight = 100;
  }
  
  void draw() {
    fill(240);
    rect(width - 20, yOffset, 20, yHeight);
  }
  
  void mouseDragged() {
    if (width - 25 < mouseX && mouseX < width) {
      if (this.yOffset < mouseY && mouseY < this.yOffset + this.yHeight) {
        this.yOffset += mouseY - pmouseY;
        if (this.yOffset < 100) {
          this.yOffset = 100;
        }
        else if (this.yOffset > height - this.yHeight) {
          this.yOffset = height - this.yHeight;
        }
      }
    }
  }
}
