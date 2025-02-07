class CuentaBancaria{

  final String titular;
  double? _saldo;

  CuentaBancaria(this.titular);

  double get saldo => _saldo ?? 0.0;
   void depositar(double saldo){
    if(saldo>=0)
    {
       _saldo= (_saldo ?? 0.0) + saldo;
    }else{
      print('digite una cantidad valida');      
    }
  } 

  void retirar(double saldo){
    if(saldo>=0 && saldo<= (_saldo ?? 0.0))
    {
       _saldo= (_saldo ?? 0.0) - saldo;
    }else{
      print('digite una cantidad valida');      
    }
  } 

}

void main(List<String> arguments){

  CuentaBancaria ctBank =CuentaBancaria('Juan Alvarenga');
  ctBank.depositar(100.00);
  print(ctBank.saldo);
  ctBank.retirar(50.00);
  print(ctBank.saldo);
  ctBank.retirar(100.00);
  print(ctBank.saldo);
}