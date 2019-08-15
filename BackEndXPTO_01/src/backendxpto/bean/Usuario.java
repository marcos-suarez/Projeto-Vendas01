/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.bean;

public class Usuario {
    
    private int idUsu;
    private String login;
    private String senha;
    private String status;
    private String tipo;
    private int idPessoaF;
    private int idPessoaJ;
    private PessoaFisica pf;
    private PessoaJuridica pj;

    public Usuario(int idUsu, String login, String senha) {
        this.idUsu = idUsu;
        this.login = login;
        this.senha = senha;
    }

    public Usuario(int idUsu, String login, String senha, String status, String tipo) {
        this.idUsu = idUsu;
        this.login = login;
        this.senha = senha;
        this.status = status;
        this.tipo = tipo;
    }

    public Usuario(int idUsu, String senha, String status, String tipo, int idPessoaF, int idPessoaJ) {
        this.idUsu = idUsu;
        this.senha = senha;
        this.status = status;
        this.tipo = tipo;
        this.idPessoaF = idPessoaF;
        this.idPessoaJ = idPessoaJ;
    }

    public Usuario(int idUsu, String login, String senha, String status, String tipo, int idPessoaF, int idPessoaJ, PessoaFisica pf, PessoaJuridica pj) {
        this.idUsu = idUsu;
        this.login = login;
        this.senha = senha;
        this.status = status;
        this.tipo = tipo;
        this.idPessoaF = idPessoaF;
        this.idPessoaJ = idPessoaJ;
        this.pf = pf;
        this.pj = pj;
    }
    
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

   

    public int getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(int idUsu) {
        this.idUsu = idUsu;
    }

    public int getIdPessoaF() {
        return idPessoaF;
    }

    public void setIdPessoaF(int idPessoaF) {
        this.idPessoaF = idPessoaF;
    }

    public int getIdPessoaJ() {
        return idPessoaJ;
    }

    public void setIdPessoaJ(int idPessoaJ) {
        this.idPessoaJ = idPessoaJ;
    }
    
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public PessoaFisica getPf() {
        return pf;
    }

    public void setPf(PessoaFisica pf) {
        this.pf = pf;
    }

    public PessoaJuridica getPj() {
        return pj;
    }

    public void setPj(PessoaJuridica pj) {
        this.pj = pj;
    }
    
    
    
    
    
    
}
