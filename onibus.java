public class onibus {
    private int id_onibus;
    private String placa;
    private int capacidade;
    private String status;
    private boolean acessivel;
    private onibus onibus;
    
    public int getId_onibus() {
        return id_onibus;
    }

    public void setId_onibus(int id_onibus) {
        this.id_onibus = id_onibus;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public int getCapacidade() {
        return capacidade;
    }

    public void setCapacidade(int capacidade) {
        this.capacidade = capacidade;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public boolean isAcessivel() {
        return acessivel;
    }

    public void setAcessivel(boolean acessivel) {
        this.acessivel = acessivel;
    }

    public onibus getOnibus() {
        return onibus;
    }

    public void setOnibus(onibus onibus) {
        this.onibus = onibus;
    }
    
    
}
