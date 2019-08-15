/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp;

import backendxpto.bean.PessoaJuridica;
import backendxpto.control.PessoaJuridicaControl;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class TestePessoaJuridica {
    
    public TestePessoaJuridica() {
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
    public void busca() {
        
        PessoaJuridica pj = new PessoaJuridica(1,"BIT","08321182000104");
        PessoaJuridicaControl pjCont = new PessoaJuridicaControl();
        PessoaJuridica pjReto = pjCont.buscaPessoaJuridica(pj);
        assertEquals(pj.getCnpj(), pjReto.getCnpj());
    
    }
    @Test
    public void insere() {
        
        PessoaJuridica pj = new PessoaJuridica(1,"BIT","08321182000104");
        PessoaJuridicaControl pjCont = new PessoaJuridicaControl();
        PessoaJuridica pjReto = pjCont.buscaPessoaJuridica(pj);
        assertEquals(pj.getCnpj(), pjReto.getCnpj());
    
    }

    @Test
    public void altera() {
        
        PessoaJuridica pj = new PessoaJuridica(1,"BIT","08321182000104");
        PessoaJuridicaControl pjCont = new PessoaJuridicaControl();
        PessoaJuridica pjReto = pjCont.buscaPessoaJuridica(pj);
        assertEquals(pj.getCnpj(), pjReto.getCnpj());
    
    }

    @Test
    public void lista() {
        
        PessoaJuridica pj = new PessoaJuridica(1,"BIT","08321182000104");
        PessoaJuridicaControl pjCont = new PessoaJuridicaControl();
        PessoaJuridica pjReto = pjCont.buscaPessoaJuridica(pj);
        assertEquals(pj.getCnpj(), pjReto.getCnpj());
    
    }

    @Test
    public void exclui() {
        
        PessoaJuridica pj = new PessoaJuridica(1,"BIT","08321182000104");
        PessoaJuridicaControl pjCont = new PessoaJuridicaControl();
        PessoaJuridica pjReto = pjCont.buscaPessoaJuridica(pj);
        assertEquals(pj.getCnpj(), pjReto.getCnpj());
    
    }

}
