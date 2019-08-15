/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;

import backendxpto.bean.Estoque;
import backendxpto.dao.EstoqueDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author marcos augusto
 */
public class EstoqueControl {
    
    EstoqueDao estoqueDao;
    
     public Estoque insereEstoque(Estoque e) throws SQLException, ClassNotFoundException {
       estoqueDao = new EstoqueDao();
       return estoqueDao.inseri(e);
    }
     
    public Estoque alterarEstoque(Estoque e) throws SQLException, ClassNotFoundException {
       estoqueDao = new EstoqueDao();
       return estoqueDao.altera(e);
    }
    
    public Estoque excluiEstoque(Estoque e) throws SQLException, ClassNotFoundException {
       estoqueDao = new EstoqueDao();
       return estoqueDao.exclui(e);
    }
     
    public Estoque buscaEstoque(Estoque e) throws SQLException, ClassNotFoundException {
       estoqueDao = new EstoqueDao();
       return estoqueDao.busca(e);
    }
    
    public List<Estoque> ListaEstoque(Estoque e) throws SQLException, ClassNotFoundException {
       estoqueDao = new EstoqueDao();
       return estoqueDao.lista(e);
    }  
}
