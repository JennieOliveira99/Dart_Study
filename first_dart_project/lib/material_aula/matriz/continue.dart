void main() {
  print('inicio');
  for (var i = 0; i < 10; i++) {
    //fazendo com que print ate o numero 5 
    if (i == 5) {
      //continue;
      break;
    }
    print(i);
  }
  print('fim');
}