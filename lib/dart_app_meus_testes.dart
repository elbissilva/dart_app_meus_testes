double caulcularDesconto (double valor, double desconto, bool porcentagem) {
  if(porcentagem) {
    return valor - ( valor * desconto )/ 100;
  }
  return valor - desconto;
}
