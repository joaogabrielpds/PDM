void main (List<String> args){
  
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7,8];
  List<int> menores = numeros.where((int elemento) => elemento < 5).toList(); 
  List<int> pares = numeros.where((int elemento) => elemento % 2 == 0).toList();
  int soma = numeros.reduce((int n1, int n2) => n1 + n2);
  print(soma);
  print(pares);
  print(menores);
}


