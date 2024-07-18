void main(){
  print ('Inicio da função');
  var resultadoCalculo =calcularPorcentagem(); //chamando a função
     print('O resultado é:  $resultadoCalculo');
   print ('Fim da função');

}

//void calcularPorcentagem(){    void: tipo do retorno - sem retorno
double calcularPorcentagem(){ //nessa funcao, o retorno sera do tipo double
  var numero = 30;
  var porcentagem = 20;

  var resultado = numero *(porcentagem) / 100;
  return resultado;//add o valor contido na variavel resultado
}