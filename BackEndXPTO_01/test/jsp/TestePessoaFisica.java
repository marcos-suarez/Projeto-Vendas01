/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp;

import backendxpto.bean.PessoaFisica;
import backendxpto.control.PessoaFisicaControl;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;


public class TestePessoaFisica {
    
    public TestePessoaFisica() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    @Test
    public void busca() throws SQLException, ClassNotFoundException {
        PessoaFisica pf = new PessoaFisica(1,"BIT","13508122858","","");
        PessoaFisicaControl pfCont = new PessoaFisicaControl();
        PessoaFisica retorno = pfCont.buscaPessoaFisica(pf);
        assertEquals(pf.getCpf(), retorno.getCpf());
        System.out.println(pf.getCpf());
        System.out.println(retorno.getCpf());
    }

    @Test
    public void lista() throws SQLException, ClassNotFoundException {
        PessoaFisica pf = new PessoaFisica(1,"BIT","13508122858","","");
        List<PessoaFisica> entrada = new ArrayList<>();
        entrada.add(pf);
        PessoaFisicaControl pfCont = new PessoaFisicaControl();
        List<PessoaFisica> retorno = pfCont.listaPessoaFisica(pf);
        assertEquals(entrada.get(0).getCpf(),retorno.get(0).getCpf());
    }

    @Test
    public void insere() throws SQLException, ClassNotFoundException {
        PessoaFisica pf = new PessoaFisica(1,"BIT","13508122858","","");
        PessoaFisicaControl pfCont = new PessoaFisicaControl();
        PessoaFisica retorno = pfCont.inserePessoaFisica(pf);
        assertEquals(pf.getCpf(), retorno.getCpf());
    }

    @Test
    public void altera() throws SQLException, ClassNotFoundException {
        PessoaFisica pf = new PessoaFisica(1,"BIT","13508122858","","");
        PessoaFisicaControl pfCont = new PessoaFisicaControl();
        PessoaFisica retorno = pfCont.alteraPessoaFisica(pf);
        assertEquals(pf.getCpf(), retorno.getCpf());
    }

    @Test
    public void exclui() throws SQLException, ClassNotFoundException {
        PessoaFisica pf = new PessoaFisica(1,"BIT","13508122858","","");
        PessoaFisicaControl pfCont = new PessoaFisicaControl();
        PessoaFisica retorno = pfCont.excluiPessoaFisica(pf);
        assertEquals(pf.getCpf(), retorno.getCpf());
    }

}
