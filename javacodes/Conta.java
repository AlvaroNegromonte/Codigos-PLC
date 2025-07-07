package javacodes;

public class Conta {
  private String numero;
  private double saldo;
  
  //public Conta(String numConta, double saldoInicial)
  //{ numero = numConta;
  //  saldo = saldoInicial;
  //}
  
  public Conta(String numConta)
  { numero = numConta;
    saldo = 0;
  }
  
  public String getNumero() {
    return numero;
  }
  
  public double getSaldo() {
    return saldo;
  }
  
  public void creditar(double valor) {
     saldo = saldo + valor;
  }
  
  public void debitar (double valor) {
     saldo = saldo - valor;
  }
  
  }
