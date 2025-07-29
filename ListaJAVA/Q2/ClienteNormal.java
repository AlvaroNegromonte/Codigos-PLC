
public class ClienteNormal extends Cliente {
    public ClienteNormal(String nome) {
        super(nome);
    }

    @Override
    public boolean isVIP() {
        return false;
    }
}
