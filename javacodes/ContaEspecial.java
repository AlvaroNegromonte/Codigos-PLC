package javacodes;

public class ContaEspecial extends Conta {
    private double bonus;
    public ContaEspecial(String numero) {
    super (numero);
    bonus = 0.0;
    }

    public void creditar(float valor) {
        super.creditar(valor);
        bonus = bonus + (valor * 0.01);
    }
        
    public void renderBonus() {
        super.creditar(bonus * 0.01);
        bonus = 0.0;
    }
        
    public double getBonus() {
        return this.bonus;
    }
}

