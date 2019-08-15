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
public class Estoque {
    private String nome_estoque;
    private float val_aluguel;
    private float tot_contas;
    private int id_e;

    public Estoque(int id_e, String nome, float val_aluguel, float tot_contas) {
        this.id_e = id_e;
        this.nome_estoque = nome;
        this.val_aluguel = val_aluguel;
        this.tot_contas = tot_contas;
    }

    public Estoque(int id_e) {
        this.id_e = id_e;
    }
    
    public float getVal_aluguel() {
        return val_aluguel;
    }

    public void setVal_aluguel(float val_aluguel) {
        this.val_aluguel = val_aluguel;
    }

    public float getTot_contas() {
        return tot_contas;
    }

    public void setTot_contas(float tot_contas) {
        this.tot_contas = tot_contas;
    }

    public int getId_e() {
        return id_e;
    }

    public void setId_e(int id_e) {
        this.id_e = id_e;
    }

    public String getNome_estoque() {
        return nome_estoque;
    }

    public void setNome_estoque(String nome_estoque) {
        this.nome_estoque = nome_estoque;
    }
    
    
    
}
