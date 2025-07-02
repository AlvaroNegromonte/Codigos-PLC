package javacodes;

public class Produto {       
    private String descricao;
    private double valor;
    private int qtd;

    public Produto (String descricao, double valor, int qtd){  //construtor
        this.descricao = descricao;
        this.valor = valor;
        this.qtd=qtd;
    }

    public String getDescricao(){
        return descricao;
    }

    public double getValor(){
        return valor;
    }

    public int getQtd(){
        return qtd;
    }

    public double valorTotal(){
        return valor*qtd;
    }

    //public double mudarPreco(String descricao)
}