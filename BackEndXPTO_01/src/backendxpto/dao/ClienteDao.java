/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.dao;

import backendxpto.bean.Cliente;
import backendxpto.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author marcos augusto
 */
public class ClienteDao {
    
    private final Connection c;
    
    public ClienteDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Cliente busca(Cliente cl) throws SQLException{
        String sql = "select * from clientes  WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,cl.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            Cliente retorno = null;
            while (rs.next()) {      
            // criando o objeto Cliente
                retorno = new Cliente(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getInt(6),
                    rs.getString(7));
            // adiciona o cliente à lista de clientes
            }
            stmt.close();
        return retorno;
   }
    
    public Cliente altera(Cliente cl) throws SQLException{
        String sql = "UPDATE clientes SET nome = ?, cpf = ?, datanasc = ?, cidade = ?, tempofid = ?, contato = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1, cl.getNome());
        stmt.setString(2, cl.getCpf());
        stmt.setString(3, cl.getData_nasc());
        stmt.setString(4, cl.getCidadeC());
        stmt.setInt(5, cl.getTempoFid());
        stmt.setString(6, cl.getContato());
        stmt.setInt(7, cl.getId());
        // executa
        stmt.execute();
        stmt.close();
        return cl;
    }
    
    public Cliente exclui(Cliente cli) throws SQLException{
        String sql = "delete from clientes WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,cli.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return cli;
    }
    
    public List<Cliente> lista(Cliente cli) throws SQLException{
         // estoques: array armazena a lista de registros
     
        List<Cliente> clientes = new ArrayList<>();
        
        String sql = "select * from clientes where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + cli.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Cliente
            Cliente c = new Cliente(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getInt(6),
                rs.getString(7)
            );
            // adiciona o cliente à lista de clientes
            clientes.add(c);
        }
            rs.close();
            stmt.close();
            return clientes; 
        }

    public Cliente inseri(Cliente cli) throws SQLException{
        String sql = "insert into clientes" + " (nome, cpf, datanasc, cidade, tempofid, contato)" + " values (?,?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,cli.getNome());
        stmt.setString(2, cli.getCpf());
        stmt.setString(3,cli.getData_nasc());
        stmt.setString(4, cli.getCidadeC());
        stmt.setInt(5, cli.getTempoFid());
        stmt.setString(6, cli.getContato());
        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            cli.setId(id);
        }
        stmt.close();
        return cli;
    }
    
     public Cliente validaLogin(Cliente cli) throws SQLException{
        // cria o select para ser executado no banco de dados 
        String sql = "select * from clientes WHERE id = ? AND senha = ? AND cpf = ? AND datanasc = ? AND cidade = ? AND tempofid = ? AND contato = ?";
        // prepared statement para seleção
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,cli.getNome());
        // executa
        ResultSet rs = stmt.executeQuery();
        // percorrendo o rs
        Cliente retorno = null;
        while (rs.next()) {      
            // criando o objeto Usuario
            retorno = new Cliente(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getInt(6),
                rs.getString(7)
            );
            // adiciona o usu à lista de usus
        }
        stmt.close();
        return retorno;
    }
}
