public class linha {
    private int id_linha;
    private String trajeto;
    private int numero;
    private String nome;
    private boolean acessivel;

    public int getId_linha() {
        return id_linha;
    }

    public void setId_linha(int id_linha) {
        this.id_linha = id_linha;
    }

    public String getTrajeto() {
        return trajeto;
    }

    public void setTrajeto(String trajeto) {
        this.trajeto = trajeto;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public boolean isAcessivel() {
        return acessivel;
    }

    public void setAcessivel(boolean acessivel) {
        this.acessivel = acessivel;
    }
    
}
