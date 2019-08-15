/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.control;

import backendxpto.bean.Logradouro;
import backendxpto.dao.LogradouroDao;


public class LogradouroControl {
    
    static LogradouroDao logDao;
    
    public Logradouro buscaLogradouro(Logradouro log) {
        logDao = new LogradouroDao();
        return logDao.busca(log);
    }
    
}
