public abstract class Pessoa implements Comparable<Pessoa> {
    private String nome;
    private Integer idade;

    public Pessoa(String nome, Integer idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getName() {
        return nome;
    }

    public Integer getAge() {
        return idade;
    }

    @Override
    public int compareTo(Pessoa outra) {
        return this.idade.compareTo(outra.idade); // Para ordenar de forma crescente (depois vamos inverter)
    }

    public abstract Ticket getTicketType();

    @Override
    public String toString() {
        return nome + ":" + idade + "[" + getTicketType() + "]";
    }
}
