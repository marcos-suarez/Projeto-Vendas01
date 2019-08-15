/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;

import backendxpto.bean.PessoaJuridica;
import backendxpto.dao.PessoaJuridicaDao;
import java.util.ArrayList;
import java.util.List;

public class PessoaJuridicaControl {

    PessoaJuridicaDao pjDao;

    public PessoaJuridica buscaPessoaJuridica(PessoaJuridica pj) {
        pjDao = new PessoaJuridicaDao();
        return pjDao.busca(pj);
    }
    
    public PessoaJuridica inserePessoaJuridica(PessoaJuridica pj) {
        pjDao = new PessoaJuridicaDao();
        return pjDao.busca(pj);
    }

    public PessoaJuridica alteraPessoaJuridica(PessoaJuridica pj) {
        pjDao = new PessoaJuridicaDao();
        return pjDao.busca(pj);
    }

    public PessoaJuridica excluePessoaJuridica(PessoaJuridica pj) {
        pjDao = new PessoaJuridicaDao();
        return pjDao.busca(pj);
    }

    public List<PessoaJuridica> ListaPessoaJuridica(PessoaJuridica pj) {
        pjDao = new PessoaJuridicaDao();
        List<PessoaJuridica> listPj = new ArrayList<PessoaJuridica>();
        return listPj;
    }

}
