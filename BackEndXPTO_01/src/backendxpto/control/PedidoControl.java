/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;
import backendxpto.bean.Pedido;
import backendxpto.dao.PedidoDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author marcos augusto
 */
public class PedidoControl {
    PedidoDao pedidoDao;

    public Pedido inserirPedido(Pedido ped) throws SQLException, ClassNotFoundException {
        pedidoDao = new PedidoDao();
        return pedidoDao.inseri(ped);
    }
   
    public Pedido alteraPedido(Pedido ped) throws SQLException, ClassNotFoundException {
       pedidoDao = new PedidoDao();
       return pedidoDao.altera(ped);

    }

    public Pedido excluiPedido(Pedido ped) throws SQLException, ClassNotFoundException {
       pedidoDao = new PedidoDao();
       return pedidoDao.exclui(ped);

    }
    
     public Pedido buscaPedido(Pedido ped) throws SQLException, ClassNotFoundException {
       pedidoDao = new PedidoDao();
       return pedidoDao.busca(ped);

    }
     
    public List<Pedido> ListaPedido(Pedido ped) throws SQLException, ClassNotFoundException {
       pedidoDao = new PedidoDao(); 
       return pedidoDao.lista(ped);
    }  

}
