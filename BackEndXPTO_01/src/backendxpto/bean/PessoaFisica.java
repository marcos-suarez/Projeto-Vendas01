/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.bean;

public class PessoaFisica extends Pessoa {
    
    private String cpf;
    private String tipo;
    private String email;
    private Logradouro end;

    public PessoaFisica(int id, String nome, String cpf, String tipo, String email) {
        super(id, nome);
        this.cpf = cpf;
        this.tipo = tipo;
        this.email = email;
    }
    
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Logradouro getEnd() {
        return end;
    }

    public void setEnd(Logradouro end) {
        this.end = end;
    }
    
    

    
}
