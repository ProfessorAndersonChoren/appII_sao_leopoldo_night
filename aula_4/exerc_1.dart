void main() {
  const List<String> names = [
    'José',
    'Maria',
    'Joana',
    'Ana Maria',
    'Beatriz',
    'Maria Clara',
    'Mariana',
  ];
  const search_name = 'maria';

  // Busca de forma manual
  final result = filterByName(names, search_name);
  final filter = names
      .where((name) => name.toLowerCase().contains(search_name.toLowerCase()))
      .toList();

  print(names);
  print(result);
  print(filter);
}

List<String> filterByName(List<String> list, String search) {
  List<String> filtered = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i].toLowerCase().contains(search.toLowerCase())) {
      filtered.add(list[i]);
    }
  }
  return filtered;
}
