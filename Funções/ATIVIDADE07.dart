const double segundosPorAnoTerrestre = 31557600;

double idadeNoPlaneta(double segundos, String planeta) {
  final nome = planeta.trim().toLowerCase();

  final periodos = <String, double>{
    'mercurio': 0.2408467,
    'mercúrio': 0.2408467,
    'venus': 0.61519726,
    'vênus': 0.61519726,
    'terra': 1.0,
    'marte': 1.8808158,
    'jupiter': 11.862615,
    'júpiter': 11.862615,
    'saturno': 29.447498,
    'urano': 84.016846,
    'netuno': 164.79132,
  };

  if (!periodos.containsKey(nome)) {
    throw ArgumentError('Planeta inválido: $planeta');
  }

  final anosTerrestres = segundos / segundosPorAnoTerrestre;
  final periodoEmAnosTerrestres = periodos[nome]!;
  return anosTerrestres / periodoEmAnosTerrestres;
}

void main() {
  final segundos = 1_000_000_000.0;
  print('Terra:  ${idadeNoPlaneta(segundos, "Terra").toStringAsFixed(2)}'); 
  print('Mercúrio: ${idadeNoPlaneta(segundos, "Mercúrio").toStringAsFixed(2)}');
  print('Netuno: ${idadeNoPlaneta(segundos, "Netuno").toStringAsFixed(2)}');
}
