package javacodes;

public class TestaProduto {
    public static void main(String[] args) {
        Produto p1 = new Produto("Arroz", 5.99, 10);
        Produto p2 = new Produto("Feijão", 7.49, 20);
        Produto p3 = new Produto("pilha", 6.49, 5);

        System.out.println("Produto 1: " + p1.getDescricao() + " | Preço: " + p1.getValor() + " | Quantidade: " + p1.getQtd() + " | Total: " + p1.valorTotal());
        System.out.println("Produto 2: " + p2.getDescricao() + " | Preço: " + p2.getValor() + " | Quantidade: " + p2.getQtd() + " | Total: " + p2.valorTotal());
        System.out.println("Produto 3: " + p3.getDescricao() + " | Preço: " + p3.getValor() + " | Quantidade: " + p3.getQtd() + " | Total: " + p3.valorTotal());

           
    }
}