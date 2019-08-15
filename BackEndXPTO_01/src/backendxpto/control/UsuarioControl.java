/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;

import backendxpto.bean.Usuario;
import backendxpto.dao.UsuarioDao;
import java.sql.SQLException;
import java.util.List;

public class UsuarioControl {
    
    UsuarioDao usuDao;
    
    public Usuario validaLogin(Usuario usu) throws SQLException, ClassNotFoundException {
       usuDao = new UsuarioDao();
       return usuDao.validaLogin(usu);
    }
    
    public Usuario insereUsuario(Usuario usu) throws SQLException, ClassNotFoundException {
       usuDao = new UsuarioDao();
       return usuDao.inseri(usu);
    }

    public Usuario alteraUsuario(Usuario usu) throws SQLException, ClassNotFoundException {
       usuDao = new UsuarioDao();
       return usuDao.altera(usu);

    }

    public Usuario excluiUsuario(Usuario usu) throws SQLException, ClassNotFoundException {
       usuDao = new UsuarioDao();
       return usuDao.exclui(usu);

    }

    public Usuario buscaUsuario(Usuario usu) throws SQLException, ClassNotFoundException {
       usuDao = new UsuarioDao();
       return usuDao.busca(usu);
    }

    public List<Usuario> ListaUsuario(Usuario usu) throws SQLException, ClassNotFoundException {
       usuDao = new UsuarioDao();
       return usuDao.lista(usu);
    }
    
}
