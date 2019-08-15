/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.dao;

import backendxpto.bean.Estoque;
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
public class EstoqueDao {
    
    private final Connection c;
    
    public EstoqueDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Estoque busca(Estoque estoque) throws SQLException{
        String sql = "select * from estoque  WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1, estoque.getId_e());
            // executa
            ResultSet rs = stmt.executeQuery();
            Estoque retorno = null;
            while (rs.next()) {      
            // criando o objeto Cliente
                retorno = new Estoque(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getFloat(3),
                    rs.getFloat(4));
            // adiciona o cliente à lista de clientes
            }
            stmt.close();
            return retorno;
   }
    
    public Estoque altera(Estoque estoque) throws SQLException{
        String sql = "UPDATE estoque SET nome_est = ?, aluguel = ?, contas = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1, estoque.getNome_estoque());
        stmt.setFloat(2, estoque.getVal_aluguel());
        stmt.setFloat(3, estoque.getTot_contas());
        stmt.setInt(4, estoque.getId_e());
        // executa
        stmt.execute();
        stmt.close();
        return estoque;
    }
    
    public Estoque exclui(Estoque estoque) throws SQLException{
        String sql = "delete from estoque WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,estoque.getId_e());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return estoque;
    }
    
    public List<Estoque> lista(Estoque estoque) throws SQLException{
         // estoques: array armazena a lista de registros

        List<Estoque> estoques = new ArrayList<>();
        
        String sql = "select * from estoque where nome_est like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + estoque.getNome_estoque() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Estoque
            Estoque e = new Estoque(
                rs.getInt(1),
                rs.getString(2),
                rs.getFloat(3),
                rs.getFloat(4)
            );
            // adiciona o estoque à lista de estoques
            estoques.add(e);
        }
        
        rs.close();
        stmt.close();
        return estoques; 
    }
    
    public Estoque inseri(Estoque estoque) throws SQLException{
        String sql = "insert into estoque" + " (nome_est, aluguel, contas)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1, estoque.getNome_estoque());
        stmt.setFloat(2, estoque.getVal_aluguel());
        stmt.setFloat(3, estoque.getTot_contas());
        
        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            estoque.setId_e(id);
        }
        stmt.close();
        return estoque;
    }
    
}
