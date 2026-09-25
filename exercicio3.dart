double celsiusParaFahrenheit(double c) => c * 9 / 5 + 32;

String descreve(String cidade, {required double tMax, double? tMin, bool chuva = false}) { 
  String classificacao = classifica(t: tMax);
  final min = tMin == null ? '' : ', min tMin';
  return '$cidade: máx $tMax$min${chuva ? ', chuva' : ''} classificação: $classificacao';
}                                

  String classifica ({required double t}){
    if(t<15){
      return 'frio';
    }else if(t<25){
      return 'ameno';
    }else{
      return 'quente';
    }
  }
  
void main() {
  print(celsiusParaFahrenheit(21));
  print(descreve('Angra', tMax: 24));
  print(descreve('Horta', tMax: 22, tMin: 17, chuva: true));
  
  final formatar = (double t) => '${t.round()} *C';
  
  print(formatar(21.6));
  
  print(classifica(t: 22));
 
}
