import 'dart:io';

void main(){
  print ('Escolha os sabores de sorvete');
  print('Codigo 1 - Sabor Uva');
  print('Codigo 2 - Sabor Morango');
  print('Codigo 3 - Sabor Manga');
  print('Codigo 4 - Sabor Amora');

  print('Digite o codigo do sabor (1 ate 4)');

  var tipoSorveteLeitura = stdin.readLineSync() as String;
  var tipoSorvete = int.parse(tipoSorveteLeitura);

  //como será usado == para todas as condicoes, vamos usar o switch
  switch (tipoSorvete){
    case 1:
    print('Sorvete uva -- 70 kcal');
    break;
    case 2:
     print('Sorvete morango -- 70 kcal');
    break;
    case 3:
     print('Sorvete manga -- 71 kcal');
    break;
    case 4:
     print('Sorvete amora -- 54 kcal');
    break;
    default:
    print('Codigo invalido');
  }


}