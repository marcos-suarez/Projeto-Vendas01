/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp;

import backendxpto.bean.Usuario;
import backendxpto.control.UsuarioControl;
import java.sql.SQLException;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;


public class TesteUsuario {
    
    public TesteUsuario () {
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
    // @Test
    // public void hello() {}

   @Test
   public void valida() throws SQLException, ClassNotFoundException {
       Usuario usu0 = new Usuario(0,"BITTENCOURT","ABFABF010101");
       UsuarioControl usuCont = new UsuarioControl();
       Usuario usu1 = usuCont.validaLogin(usu0);
       //Usuario usu2 = usuCont.alteraUsuario(usu0);
       //Usuario usu3 = usuCont.excluiUsuario(usu0);
       //List<Usuario> usus = usuCont.ListaUsuario(usu0);
       assertEquals(usu0.getLogin(),usu1.getLogin());
       System.out.println("Input Valida " + usu0.getLogin());
       System.out.println("OutPut Valida " + usu1.getLogin());
   }

   @Test
   public void buscaUsuario() throws SQLException, ClassNotFoundException {
       Usuario usu0 = new Usuario(1,"","");
       UsuarioControl usuCont = new UsuarioControl();
       Usuario usu1 = usuCont.buscaUsuario(usu0);
       assertEquals(usu0.getIdUsu(),usu1.getIdUsu());
       System.out.println("Input Busca " + usu0.getLogin());
       System.out.println("OutPut Busca " + usu1.getLogin());
   }

   @Test
   public void ListaUsuario() throws SQLException, ClassNotFoundException {
       Usuario usu0 = new Usuario(1,"Bit","");
       UsuarioControl usuCont = new UsuarioControl();
       List<Usuario> usu1 = usuCont.ListaUsuario(usu0);
       assertEquals(usu0.getIdUsu(),usu1.get(0).getIdUsu());
       System.out.println("Input Lista " + usu0.getLogin());
       System.out.println("OutPut Lista " + usu1.get(0).getLogin());
   }

   @Test
   public void InsereUsuario() throws SQLException, ClassNotFoundException {
       Usuario usu0 = new Usuario(0,"Teste","Teste","Teste","Teste");
       UsuarioControl usuCont = new UsuarioControl();
       Usuario usu1 = usuCont.insereUsuario(usu0);
       assertEquals(usu0.getIdUsu(),usu1.getIdUsu());
       System.out.println("Input Insere " + usu0.getLogin());
       System.out.println("OutPut Insere " + usu1.getLogin());
   }

   @Test
   public void AlteraUsuario() throws SQLException, ClassNotFoundException {
       Usuario usu0 = new Usuario(4,"Teste4","Teste4","Teste4","Teste4");
       UsuarioControl usuCont = new UsuarioControl();
       Usuario usu1 = usuCont.alteraUsuario(usu0);
       assertEquals(usu0.getIdUsu(),usu1.getIdUsu());
       System.out.println("Input Altera " + usu0.getLogin());
       System.out.println("OutPut Altera " + usu1.getLogin());
   }

   @Test
   public void ExcluiUsuario() throws SQLException, ClassNotFoundException {
       Usuario usu0 = new Usuario(3,"","");
       UsuarioControl usuCont = new UsuarioControl();
       Usuario usu1 = usuCont.excluiUsuario(usu0);
       assertEquals(usu0.getIdUsu(),usu1.getIdUsu());
       System.out.println("Input Exclui " + usu0.getLogin());
       System.out.println("OutPut Exclui " + usu1.getLogin());
   }
   
}
