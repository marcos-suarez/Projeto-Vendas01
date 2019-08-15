/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.bean;

import java.text.SimpleDateFormat;


public class Pedido {
    
    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
    
    private int idPed;
    private String data;
    private float valorPed;
    private int idCli;
    private int idProd;
    private int idEst;
    
    private Cliente cli = new Cliente(idCli);
    private Produto pro = new Produto(idProd);
    private Estoque est = new Estoque(idEst);

    public Pedido(int idPed, int idCli, int idProd, int idEst, String data, float valorPed) {
        this.idPed = idPed;
        this.data = data;
        this.valorPed = valorPed;
        this.idCli = idCli;
        this.idProd = idProd;
        this.idEst = idEst;
    }
    
    public int getIdEst() {
        return idEst;
    }

    public void setIdEst(int idEst) {
        this.idEst = idEst;
    }
    
    public int getIdPed() {
        return idPed;
    }

    public void setIdPed(int idPed) {
        this.idPed = idPed;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public float getValorPed() {
        return valorPed;
    }

    public void setValorPed(float valorPed) {
        this.valorPed = valorPed;
    }

    public int getIdCli() {
        return idCli;
    }

    public void setIdCli(int idCli) {
        this.idCli = idCli;
    }

    public int getIdProd() {
        return idProd;
    }

    public void setIdProd(int idProd) {
        this.idProd = idProd;
    }

    public Cliente getCli() {
        return cli;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }

    public Produto getPro() {
        return pro;
    }

    public void setPro(Produto pro) {
        this.pro = pro;
    }
}
