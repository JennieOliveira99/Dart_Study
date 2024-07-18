void main(){
  var quantidade = 50;
  var valorBolacha = 1.0;

  //apos fazer a funcao de calcular
  //chamando a funcao
  var valorTotal = calcularPrecoBolacha(quantidade, valorBolacha);
  print('Valor total: $valorTotal');

}
  //fazendo a funcao de calcular
double calcularPrecoBolacha(int quantidade, double valorBolacha){
  if(quantidade > 10){
    valorBolacha = valorBolacha * 0.9;//dando o desconto de 10%
  print('Aplicando o desconto de 10% e o valor total é: $valorBolacha');
  }
  return valorBolacha * quantidade;
}