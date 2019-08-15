/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.bean;

public class Produto {
    private int id_p;
    private String nome;
    private String tipo;
    private int qtd;
    private float valor;
    private float peso;

    public Produto(int id_p, String nome, String tipo, int qtd, float valor, float peso) {
        this.id_p = id_p;
        this.nome = nome;
        this.tipo = tipo;
        this.qtd = qtd;
        this.valor = valor;
        this.peso = peso;
    }
    
    public Produto(int id_p){
        this.id_p = id_p;
    }

    public int getId_p() {
        return id_p;
    }

    public void setId_p(int id_p) {
        this.id_p = id_p;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }
    
    
    
}
