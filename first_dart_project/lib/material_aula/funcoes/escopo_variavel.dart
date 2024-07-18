String nome1 = 'Jenny';//variavel global, ela pode ser usada em qualquer funcao

void main(){
  String nome = 'Jenny';//variavel local
  print(nome);
  //essa variavel só esta disponivel dentro dessa funcao

}
void funcao(){
  print(nome1);
}