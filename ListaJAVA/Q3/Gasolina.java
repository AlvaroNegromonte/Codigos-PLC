public class Gasolina implements BombaCombustivel {
    private double precoLitro;

    public Gasolina(double precoLitro) {
        this.precoLitro = precoLitro;
    }

    @Override
    public void abastecer(Automovel a, double litros) throws CombustivelNaoCompativel, CombustivelOverflow {
        if (a.getTipoMotor() != TipoMotor.GASOLINA && a.getTipoMotor() != TipoMotor.FLEX) {
            throw new CombustivelNaoCompativel("Esse automóvel não aceita gasolina.");
        }

        double disponivel = a.getCapacidadeMaximaTanque() - a.getCombustivelAtual();
        if (litros > disponivel) {
            throw new CombustivelOverflow("Quantidade excede a capacidade do tanque.");
        }

        a.setCombustivelAtual(a.getCombustivelAtual() + litros);
    }

    @Override
    public void calcularCusto(double litros) {
        double custo = litros * precoLitro;
        System.out.println("Combustível: Gasolina");
        System.out.println("Litros: " + litros);
        System.out.printf("Custo: R$ %.2f\n", custo);
    }

    @Override
    public void ajustarPreco(double novoPreco) {
        this.precoLitro = novoPreco;
    }
}
