void main() {
  var nome = 'Jenny';
  var idade = 25;
  funcaoPrimitiva(nome, idade); 
  print('nome: $nome, idade: $idade');//dart gera uma copia dos tipos primitivos(int, bool, string, double)

  //2°parte
  var cursos = ['Dart', 'Flutter', 'Logica de Programacao'];
  print(cursos);
  getCursos(cursos);
  print(cursos); //colecoes(Listas, mapas, kinstancias de classes) o dart envia a posicao da memoria/ ponteiro
}

void funcaoPrimitiva(String nome, int idade) {
  if (idade > 24) {
    nome = ' $nome gosta de coxinha';
  }
  print('nome: $nome, idade: $idade');
}

//2° parte
void getCursos(List<String> cursos){
  //quero exckuir o 1°
  cursos.removeAt(0);
  print(cursos);
}
