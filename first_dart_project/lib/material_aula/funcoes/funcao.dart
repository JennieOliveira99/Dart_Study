void main(){
  print ('Inicio da função');
  calcularPorcentagem(); //chamando a função
   print ('Fim da função');

}//criando função:
void calcularPorcentagem(){
  var numero = 30;
  var porcentagem = 20;

  var resultado = numero *(porcentagem) / 100;
  print('O resultado é:  $resultado');
}