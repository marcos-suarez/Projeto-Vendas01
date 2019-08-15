/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;

import backendxpto.bean.Produto;
import backendxpto.dao.ProdutoDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author marcos augusto
 */
public class ProdutoControl {
    
     ProdutoDao produtoDao;
    
    
    public Produto insereProduto(Produto p) throws SQLException, ClassNotFoundException {
       produtoDao = new ProdutoDao();
       return produtoDao.inseri(p);
    }
    
    public Produto alteraProduto(Produto p) throws SQLException, ClassNotFoundException {
       produtoDao = new ProdutoDao();
       return produtoDao.altera(p);
    }
    
    public Produto excluiProduto(Produto p) throws SQLException, ClassNotFoundException {
       produtoDao = new ProdutoDao();
       return produtoDao.exclui(p);
    }
    
    public Produto buscaProduto(Produto p) throws SQLException, ClassNotFoundException {
       produtoDao = new ProdutoDao();
       return produtoDao.busca(p);
    }
    
    public List<Produto> ListaProduto(Produto p) throws SQLException, ClassNotFoundException {
       produtoDao = new ProdutoDao();
       return produtoDao.lista(p);
    }  
}
