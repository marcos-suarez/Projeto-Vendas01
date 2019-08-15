/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp;

import backendxpto.bean.Logradouro;
import backendxpto.control.LogradouroControl;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;


public class TesteLogradouro {
    
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
    // @Test

    @Test
    
    public void busca() {
        Logradouro log0 = new Logradouro("XPTO");
        LogradouroControl logcont = new LogradouroControl();
        Logradouro log1 = logcont.buscaLogradouro(log0);
        assertEquals(log0.getCep(), log1.getCep());
    }


}
