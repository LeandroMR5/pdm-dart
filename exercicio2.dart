void main() {
  String nome = 'Horta';
  String? alcunha;
  
  print(alcunha ?? "sem alcunha");
  print(alcunha?.length);
  alcunha = 'Cidade do Mar';
  print(alcunha.length);
  
  late String descricao;
  descricao = '$nome, $alcunha';
  print(descricao);
  
  int? humidade;
  print('Humudade: ${humidade ?? 'n/d'} ');
}
