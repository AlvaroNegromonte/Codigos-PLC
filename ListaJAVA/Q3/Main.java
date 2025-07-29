public class Main {
    public static void main(String[] args) {
        Automovel carroFlex = new Automovel(50, TipoMotor.FLEX);
        Automovel carroGasolina = new Automovel(40, TipoMotor.GASOLINA);
        Automovel carroEtanol = new Automovel(30, TipoMotor.ETANOL);

        BombaCombustivel bombaGas = new Gasolina(5.49);
        BombaCombustivel bombaEta = new Etanol(3.89);

        try {
            bombaEta.abastecer(carroGasolina, 10);
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }

        try {
            bombaGas.abastecer(carroGasolina, 45);
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }

        try {
            bombaGas.abastecer(carroGasolina, 30);
            bombaGas.calcularCusto(30);
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }

        bombaGas.ajustarPreco(6.19);
        try {
            bombaGas.abastecer(carroGasolina, 10);
            bombaGas.calcularCusto(10);
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }
    }
}
