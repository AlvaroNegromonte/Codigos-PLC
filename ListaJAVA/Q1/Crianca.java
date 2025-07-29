public class Crianca extends Pessoa {
    public Crianca(String nome, Integer idade) {
        super(nome, idade);
    }

    @Override
    public Ticket getTicketType() {
        return Ticket.CRIANCA;
    }
}

