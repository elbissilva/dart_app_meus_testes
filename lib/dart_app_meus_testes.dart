double caulcularDesconto (double valor, double desconto, bool porcentagem) {
  if (valor <= 0){
    throw ArgumentError("O produto está zerado");
  }
  // if (desconto <= 0){
  //   print(valor);
  // }
  if (desconto<=0){
    throw ArgumentError("Produto não tem desconto");
  }
  if(porcentagem) {
    return valor - ( valor * desconto )/ 100;
  }
  return valor - desconto;
}
