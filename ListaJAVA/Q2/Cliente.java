public abstract class Cliente implements Comparable<Cliente> {
    protected String nome;
    protected int pontos;

    public Cliente(String nome) {
        this.nome = nome;
        this.pontos = 0;
    }

    public String getNome() {
        return nome;
    }

    public int getPontos() {
        return pontos;
    }

    public void adicionarPontos(int pontos) {
        this.pontos += pontos;
    }

    public abstract boolean isVIP();

    @Override
    public int compareTo(Cliente outro) {
        return Integer.compare(outro.pontos, this.pontos); // Ordena decrescente
    }

    @Override
    public String toString() {
        return nome + " - " + pontos + " pontos [" + (isVIP() ? "VIP" : "Normal") + "]";
    }
}

