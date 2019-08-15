/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;

import backendxpto.bean.PessoaFisica;
import backendxpto.dao.PessoaFisicaDao;
import java.sql.SQLException;
import java.util.List;

public class PessoaFisicaControl {

    static PessoaFisicaDao pfDao;

    public PessoaFisica buscaPessoaFisica(PessoaFisica pf) throws SQLException, ClassNotFoundException {
        pfDao = new PessoaFisicaDao();
        return pfDao.busca(pf);
    }

    public List<PessoaFisica> listaPessoaFisica(PessoaFisica pf) throws SQLException, ClassNotFoundException {
        pfDao = new PessoaFisicaDao();
        List<PessoaFisica> pfs = pfDao.lista(pf);
        return pfs;
    }

    public PessoaFisica inserePessoaFisica(PessoaFisica pf) throws SQLException, ClassNotFoundException {
        pfDao = new PessoaFisicaDao();
        return pfDao.inseri(pf);
    }

    public PessoaFisica alteraPessoaFisica(PessoaFisica pf) throws SQLException, ClassNotFoundException {
        pfDao = new PessoaFisicaDao();
        return pfDao.altera(pf);
    }

    public PessoaFisica excluiPessoaFisica(PessoaFisica pf) throws SQLException, ClassNotFoundException {
        pfDao = new PessoaFisicaDao();
        return pfDao.exclui(pf);
    }

}
