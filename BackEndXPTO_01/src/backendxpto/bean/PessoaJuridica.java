/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.bean;

public class PessoaJuridica extends Pessoa {
    
    private String cnpj;
    private Logradouro end;

    public PessoaJuridica( int id, String nome, String cnpj) {
        super(id, nome);
        this.cnpj = cnpj;
    }

    public PessoaJuridica(String cnpj, Logradouro end, int id, String nome) {
        super(id, nome);
        this.cnpj = cnpj;
        this.end = end;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public Logradouro getEnd() {
        return end;
    }

    public void setEnd(Logradouro end) {
        this.end = end;
    }
    
    
    
}
