
import java.util.*;

public class Hamburgueria {
    private double precoHamburguer;
    private double precoBatata;
    private double precoRefri;
    private double bonusVIP;
    private Map<String, Cliente> clientes;

    public Hamburgueria(double precoHamburguer, double precoBatata, double precoRefri, double bonusVIP) {
        this.precoHamburguer = precoHamburguer;
        this.precoBatata = precoBatata;
        this.precoRefri = precoRefri;
        this.bonusVIP = bonusVIP;
        this.clientes = new HashMap<>();
    }

    public void adicionarCliente(String nome, boolean vip) {
        if (vip) {
            clientes.put(nome, new ClienteVIP(nome, bonusVIP));
        } else {
            clientes.put(nome, new ClienteNormal(nome));
        }
    }

    public void adicionarCompra(String nome, int qtdHamburguer, int qtdBatata, int qtdRefri) {
        Cliente c = clientes.get(nome);
        if (c == null) return;

        int pontos = 0;
        pontos += (int)(precoHamburguer / 10) * qtdHamburguer;
        pontos += (int)(precoBatata / 10) * qtdBatata;
        pontos += (int)(precoRefri / 10) * qtdRefri;

        if (c instanceof ClienteVIP) {
            ((ClienteVIP) c).adicionarPontosComBonus(pontos);
        } else {
            c.adicionarPontos(pontos);
        }
    }

    public void finalizarPromocao() {
        List<Cliente> ranking = new ArrayList<>(clientes.values());
        Collections.sort(ranking);

        System.out.println("🏆 Top 10 Clientes:");
        for (int i = 0; i < Math.min(10, ranking.size()); i++) {
            System.out.println((i + 1) + ". " + ranking.get(i));
        }
    }
}

