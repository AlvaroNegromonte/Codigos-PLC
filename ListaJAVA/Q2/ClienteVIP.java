
public class ClienteVIP extends Cliente {
    private double bonus;

    public ClienteVIP(String nome, double bonus) {
        super(nome);
        this.bonus = bonus;
    }

    public double getBonus() {
        return bonus;
    }

    @Override
    public boolean isVIP() {
        return true;
    }

    public void adicionarPontosComBonus(int pontosBase) {
        int pontosBonus = (int) Math.ceil((1 + bonus) * pontosBase);
        this.pontos += pontosBonus;
    }
}

