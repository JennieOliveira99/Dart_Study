void main() {
  /*
  array bidimensional 
  um único item da lista pode ter varios elementos como uma tabela
  
      Imagine que você foi contratado(a) para desenvolver um sistema para 
    controlar a venda de ingressos de um pequeno teatro.
    O Teatro terá 5 fileiras e cada fileira terá 6 poltronas
    
exemplo:
  var teatro = [
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
  ];

  print(teatro[0][2]);//pegando a poltrona 3 da 1° fileira
 */

  var teatro = [];
  var qtdFileiras = 7;
  var poltronasPorFileira = 3;

  for (var fileira = 0; fileira < qtdFileiras; fileira++) {
    //percorrendo as 5 fileiras, cada vez que percorrer,add 1 ileira ate completar as 5
    var fileiraTeatro = [];
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      //para cada 1 fileira, roda 6 vezes a poltrona(add as 6 poltronas de cada fileira)
      fileiraTeatro.add(0);
    }
    teatro.add(fileiraTeatro);
  }
  print('Mapa do teatro');
  print('------------------------');
  print('                # PALCO #             ');

  for (var fileira = 0; fileira < qtdFileiras; fileira++) {
    var fileiraP = '';
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      //concatenando
    fileiraP += 'P($fileira$poltrona): ${teatro[fileira][poltrona]} | ';
    }
    print(fileiraP);
  }
  print('');
 print('            # FINAL DO TEATRO #             ');

}