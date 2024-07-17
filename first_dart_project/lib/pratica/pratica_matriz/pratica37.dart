/*
Você foi contratada(o) para desenvolver um sistema de exibição do boletim digital de um curso de inglês. 
Seu sistema deve armazenar e apresentar a informação de 15 alunos. Cada aluno passa por 6 avaliações em cada 
semestre (prova oral, prova escrita e conversação por bimestre). 
Além da nota dessas avaliações, seu sistema ainda deve registrar a média final do semestre de cada aluno.

Gostaria que você fizesse 2 alterações: 
1 - Solicite para o cliente o nome do aluno e guarde-o para imprimir no final
2 - Para o aluno passar de ano ele tem que tirar uma média maior que 6, sendo na impressão você deve apresentar
      APROVADO caso ele tenha uma média maior que 6;
      REPROVADO caso ele tenha uma média menor que 6;
*/
import 'dart:io';

void main() {
  // 15 Alunos
  // 6 posições 
  var notasAlunos = List.generate(15, (index) => List.filled(7, 0.0));
  var nomeAlunos = List.generate(15, (index) => '');
  
  // Variavel de controle para soma das notas e média de nota
  var totalNotaAluno = 0.0;

  // Loop de alunos
  for (int aluno = 0; aluno < 2; aluno++) {

    print('Digite o nome do aluno ${aluno +1}: ');
    var nomeAlunoDigitado = stdin.readLineSync() as String;
    nomeAlunos[aluno] = nomeAlunoDigitado;

    // Loop das notas
    for (int nota = 0; nota < 6; nota++) {
      print('Digite a ${nota + 1} nota do aluno $nomeAlunoDigitado: ');
      // Solicitamos a nota
      var notaAlunoStr = stdin.readLineSync() as String;
      // Adicionamos na nossa matriz 
      notasAlunos[aluno][nota] = double.parse(notaAlunoStr);
      // somamos o total da nota
      totalNotaAluno = totalNotaAluno + notasAlunos[aluno][nota];
    }
    // Calculamos a média do aluno e adicionamos na 7 posição
    notasAlunos[aluno][6] = totalNotaAluno / 6;
    // Zeramos a nota
    totalNotaAluno = 0.0;
  }

  for (int aluno = 0; aluno < 2; aluno++) {
    var nomeAluno = nomeAlunos[aluno];
    print("Aluno $nomeAluno:");
    for (int nota = 0; nota < 6; nota++) {
      print('Nota prova ${nota + 1}: ${notasAlunos[aluno][nota]}');
    }
    var mediaAluno = notasAlunos[aluno][6];
    print('A média do aluno $nomeAluno: $mediaAluno ');
    if(mediaAluno >= 6){
      print('APROVADO');
    }else{
      print('REPROVADO');
    }
  }

}