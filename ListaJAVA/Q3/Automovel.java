public class Automovel {
    private double combustivelAtual;
    private double capacidadeMaximaTanque;
    private TipoMotor motor;

    public Automovel(double capacidadeMaximaTanque, TipoMotor motor) {
        this.combustivelAtual = 0;
        this.capacidadeMaximaTanque = capacidadeMaximaTanque;
        this.motor = motor;
    }

    public double getCombustivelAtual() {
        return combustivelAtual;
    }

    public void setCombustivelAtual(double combustivelAtual) {
        this.combustivelAtual = combustivelAtual;
    }

    public double getCapacidadeMaximaTanque() {
        return capacidadeMaximaTanque;
    }

    public TipoMotor getTipoMotor() {
        return motor;
    }
}
