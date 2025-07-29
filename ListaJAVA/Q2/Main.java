public class Main {
    public static void main(String[] args) {
        Hamburgueria sistema = new Hamburgueria(20.0, 8.0, 5.0, 0.5);

        sistema.adicionarCliente("João", true);    
        sistema.adicionarCliente("Maria", false);  
        sistema.adicionarCliente("Pedro", true);   
        sistema.adicionarCliente("Ana", false);    
        sistema.adicionarCliente("Lucas", false);  

        sistema.adicionarCompra("João", 3, 2, 0);   
        sistema.adicionarCompra("Maria", 5, 2, 1); 
        sistema.adicionarCompra("Pedro", 4, 3, 0); 
        sistema.adicionarCompra("Ana", 2, 2, 1);    
        sistema.adicionarCompra("Lucas", 3, 0, 0);  

        sistema.finalizarPromocao();
    }
}
