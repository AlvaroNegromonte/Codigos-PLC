package javacodes;

public class Aluno {
    private String nome;
    private String CPF;
    private int idade;
    private Curso curso;

    public Aluno (String nome, String CPF, int idade, Curso curso){
        this.nome = nome;
        this.CPF = CPF;
        this.idade = idade;
        this.curso = curso;
    }

    public String getNome() {
        return nome;
    }

    public String getCPF() {
        return CPF;
    }

    public int getIdade() {
        return idade;
    }

    public Curso getCurso() {
        return curso;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public void setCPF(String CPF){
        this.CPF = CPF;
    }

    public void setIdade(int idade){
        this.idade = idade;
    }

    public void setCurso(Curso curso){
        this.curso =curso;
    }
}




