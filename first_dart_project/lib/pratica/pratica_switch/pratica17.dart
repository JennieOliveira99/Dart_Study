import 'dart:io';

void main(){
  print ('Digite 1 letra');
  var letraDigitada = stdin.readLineSync();

  switch(letraDigitada){

    case 'a':
      print('$letraDigitada é uma vogal ');
      break;
    case 'e':
      print('$letraDigitada é uma vogal  ');
      break;
    case 'i':
      print(' $letraDigitada é uma vogal ');
      break;
     case 'o':
      print(' $letraDigitada é uma vogal ');
      break;
     case 'u':
      print('$letraDigitada é uma vogal  ');
      break;
    default:
    print('$letraDigitada é uma consoante ');
  }
}