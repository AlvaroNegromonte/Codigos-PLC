import java.util.ArrayList;
import java.util.Collections;

public class Queue<T extends Pessoa> {
    private ArrayList<T> pessoas;
    private int capacidade;

    public Queue(int capacidade) {
        this.capacidade = capacidade;
        this.pessoas = new ArrayList<>(capacidade);
    }

    public Queue() {
        this(10); // valor padrão
    }

    public void push(T pessoa) {
        pessoas.add(pessoa);
        Collections.sort(pessoas, Collections.reverseOrder()); // Ordena pela idade decrescente
    }

    public T pop() {
        if (!isEmpty()) {
            return pessoas.remove(0); // remove o mais velho (primeiro da fila)
        }
        return null;
    }

    public boolean isEmpty() {
        return pessoas.isEmpty();
    }

    public void printFila() {
        for (T p : pessoas) {
            System.out.println(p);
        }
    }
}
