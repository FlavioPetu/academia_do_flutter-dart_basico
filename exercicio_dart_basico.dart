void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  int pacMaisDe20 = 0;

  List pacSobreNomeRah = [];
  List pacSobreNomeSil = [];
  List pacSobreNomeVer = [];

  for (var pac in pacientes) {
    if (int.parse(pac.split('|')[1]) > 20) {
      pacMaisDe20++;
    }
    if (pac.split('|')[0].contains('Rahman')) {
      pacSobreNomeRah.add(
          '${pac.split('|')[0]}, ${pac.split('|')[2]} com ${pac.split('|')[1]} anos');
    }
    if (pac.split('|')[0].contains('Silva')) {
      pacSobreNomeSil.add(
          '${pac.split('|')[0]}, ${pac.split('|')[2]} com ${pac.split('|')[1]} anos');
    }
    if (pac.split('|')[0].contains('Verne')) {
      pacSobreNomeVer.add(
          '${pac.split('|')[0]}, ${pac.split('|')[2]} com ${pac.split('|')[1]} anos');
    }
  }

  print('===============================================');
  print('Total de ${pacMaisDe20} pacientes com mais de 20 anos');
  print('');

  print('===============Família Rahman==================');
  for (var nomeRah in pacSobreNomeRah) {
    print(nomeRah);
  }

  print('');
  print('===============Família Silva===================');
  for (var nomeSil in pacSobreNomeSil) {
    print(nomeSil);
  }

  print('');
  print('===============Família Verne===================');
  for (var nomeVer in pacSobreNomeVer) {
    print(nomeVer);
  }

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
}
