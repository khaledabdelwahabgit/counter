class Counter {
  int counter = 0;

  counterincrement() {
    counter++;
  }

  counterdecrement() {
    if (counter > 0) {
      counter--;
    } else {
      counter = 0;
    }
  }
}
