public class Adulto extends Pessoa {
    public Adulto(String nome, Integer idade) {
        super(nome, idade);
    }

    @Override
    public Ticket getTicketType() {
        return Ticket.ADULTO;
    }
}
