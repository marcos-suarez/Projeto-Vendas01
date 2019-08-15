/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.bean;

/**
 *
 * @author marcos augusto
 */
public class Cliente {
    private String nome;
    private int id_c;
    private String cpf;
    private String data_nasc;
    private String cidadeC;
    private int tempoFid;
    private String contato;

    public Cliente(int id, String nome, String cpf, String data_nasc, String cidadeC, int tempoFid, String contato) {
        this.id_c = id;
        this.nome = nome;
        this.cpf = cpf;
        this.data_nasc = data_nasc;
        this.cidadeC = cidadeC;
        this.tempoFid = tempoFid;
        this.contato = contato; 
    }
    
    public Cliente(int id){
        this.id_c = id;
    }
    
    public Cliente(int id, String nome){
        this.id_c = id;
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getId() {
        return id_c;
    }

    public void setId(int id) {
        this.id_c = id;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getData_nasc() {
        return data_nasc;
    }

    public void setData_nasc(String data_nasc) {
        this.data_nasc = data_nasc;
    }

    public String getCidadeC() {
        return cidadeC;
    }

    public void setCidadeC(String cidade) {
        this.cidadeC = cidade;
    }

    public int getTempoFid() {
        return tempoFid;
    }

    public void setTempoFid(int tempo_fid) {
        this.tempoFid = tempo_fid;
    }

    public String getContato() {
        return contato;
    }

    public void setContato(String contato) {
        this.contato = contato;
    }
}
