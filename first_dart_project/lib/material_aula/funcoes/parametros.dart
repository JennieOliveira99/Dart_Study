void main(){
  var numero = 100;
  var porcentagem = 100;
  var resultado = numero * (porcentagem)/ 100;
  print ('$porcentagem de $numero é:   $resultado');
}

double calcularPorcentagem(double numero, double porcentagem){ // aqui estamos passando os parametros
  var resultado = numero * (porcentagem) / 100;
  return resultado;
}