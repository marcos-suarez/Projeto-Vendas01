/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto;

import backendxpto.bean.Logradouro;
import backendxpto.bean.PessoaFisica;
import javax.swing.JOptionPane;

public class BackEndXPTO {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

 int id = Integer.parseInt(JOptionPane.showInputDialog("Informe id"));
        String nome = JOptionPane.showInputDialog("Nome");
        String cpf = JOptionPane.showInputDialog("cpf");
        String cep = JOptionPane.showInputDialog("cep");
        Logradouro end = new Logradouro(cep);
        PessoaFisica pf = new PessoaFisica(id,nome,cpf,"","");
        pf.setEnd(end);
        JOptionPane.showMessageDialog(null, pf.toString());
    }
    
}
