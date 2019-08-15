/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;

import backendxpto.bean.PessoaFisica;
import backendxpto.bean.Usuario;
import backendxpto.bean.UsuarioPessoa;
import backendxpto.dao.UsuarioPessoaDao;
import java.sql.SQLException;
import java.util.List;


public class UsuarioPessoaControl {
    
    static UsuarioControl usucont = new UsuarioControl();
    static PessoaFisicaControl pescont = new PessoaFisicaControl();

    public UsuarioPessoa inserirUsuarioPessoa(UsuarioPessoa usupe) throws SQLException, ClassNotFoundException {
        UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        usupe = usupesDao.inseri(usupe);
        return usupe;
    }
    
    public UsuarioPessoa buscarUsuarioPessoa(UsuarioPessoa usupe) throws SQLException, ClassNotFoundException {

        UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        usupe = usupesDao.busca(usupe);

        Usuario usu = new Usuario(usupe.getIdUsuario(),"","","","");
        usu = usucont.buscaUsuario(usu);
        usupe.setUsu(usu);

        PessoaFisica pesfis = new PessoaFisica(usupe.getIdPessoa(),"","","","");
        pesfis = pescont.buscaPessoaFisica(pesfis);
        usupe.setPes(pesfis);

        return usupe;
    }
    
    public UsuarioPessoa excluirUsuarioPessoa(UsuarioPessoa usupe) throws SQLException, ClassNotFoundException {
        UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        usupe = usupesDao.exclui(usupe);
        return usupe;
    }

    public UsuarioPessoa alterarUsuarioPessoa(UsuarioPessoa usupe) throws SQLException, ClassNotFoundException {
        UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        usupe = usupesDao.altera(usupe);
        return usupe;
    }

    public List<UsuarioPessoa> listarUsuarioPessoa(UsuarioPessoa usupes) throws SQLException, ClassNotFoundException {

        UsuarioPessoaDao usupesDao = new UsuarioPessoaDao();
        List<UsuarioPessoa> ususpes = usupesDao.lista(usupes);

        for (UsuarioPessoa listaUsuarioPessoa : ususpes) {
            Usuario usu = new Usuario(listaUsuarioPessoa.getIdUsuario(),"","","","");
            PessoaFisica pesfis = new PessoaFisica(listaUsuarioPessoa.getIdPessoa(),"","","","");
            listaUsuarioPessoa.setPes(pescont.buscaPessoaFisica(pesfis));
            listaUsuarioPessoa.setUsu(usucont.buscaUsuario(usu));
        }

        return ususpes;
    }
}
