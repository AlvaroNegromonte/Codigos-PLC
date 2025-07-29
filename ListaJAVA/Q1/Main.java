public class Main {
    public static void main(String[] args) {
        Queue<Pessoa> fila = new Queue<>();

        fila.push(new Crianca("Maria", 10));
        fila.push(new Adulto("Joao", 30));
        fila.push(new Crianca("Carlos", 12));
        fila.push(new Adulto("Ana", 25));

        fila.printFila();
    }
}
