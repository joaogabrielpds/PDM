void exibirOla(){

print("Olá");

}

void exibirMsgposicinal(String msg) {

  print(msg);
}
bool menorQue5(int num) {
  return num < 5;
}

bool par(int num ) {
  return num % 2 == 0;
}

int soma(int n1, int n2) {
  return n1 + n2;
}
void exibirMsgnomeado({required String msg}){

  print(msg);


}
void main (List<String> args){
exibirOla();
exibirMsgposicinal("Olá chefe");
exibirMsgnomeado(msg: "Olá Mundo");
print(menorQue5(3));
print(par(4));
print(soma(2, 3));
}