package javacodes;

public class Contacomgerador {
    private int numero;
    private double saldo;
    private static int proximo = 0;

    public Contacomgerador(){
        this.numero = Contacomgerador.getProximo();
        this.saldo = 0.0;
    }

    private static int getProximo(){
        proximo = proximo + 1;
        return proximo;
    }
}
