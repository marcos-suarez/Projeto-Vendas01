/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;

import backendxpto.bean.Cliente;
import backendxpto.dao.ClienteDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author marcos augusto
 */
public class ClienteControl {
    
    ClienteDao clienteDao;
    
    
    public Cliente insereCliente(Cliente cli) throws SQLException, ClassNotFoundException {
       clienteDao = new ClienteDao();
       return clienteDao.inseri(cli);
    }

    public Cliente alteraCliente(Cliente cli) throws SQLException, ClassNotFoundException {
       clienteDao = new ClienteDao();
       return clienteDao.altera(cli);

    }

    public Cliente excluiCliente(Cliente cli) throws SQLException, ClassNotFoundException {
       clienteDao = new ClienteDao();
       return clienteDao.exclui(cli);

    }
    
     public Cliente buscaCliente(Cliente cli) throws SQLException, ClassNotFoundException {
       clienteDao = new ClienteDao();
       return clienteDao.busca(cli);

    }
     
    public List<Cliente> ListaCliente(Cliente cli) throws SQLException, ClassNotFoundException {
       clienteDao = new ClienteDao();
       return clienteDao.lista(cli);
    }  
}
