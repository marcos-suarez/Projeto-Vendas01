/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.dao;

import backendxpto.bean.Produto;
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
public class ProdutoDao {
    
    private final Connection c;
    
    public ProdutoDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Produto busca(Produto prod) throws SQLException{
        String sql = "select * from produto  WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,prod.getId_p());
            // executa
            ResultSet rs = stmt.executeQuery();
            Produto retorno = null;
            while (rs.next()) {      
            // criando o objeto Cliente
                retorno = new Produto(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getInt(4),
                    rs.getFloat(5),
                    rs.getFloat(6));
            // adiciona o cliente à lista de clientes
            }
            stmt.close();
        return retorno;
   }
    
    public Produto altera(Produto prod) throws SQLException{
        String sql = "UPDATE produto SET nome = ?, tipo = ?, qtd = ?, valor = ?, peso = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        
        stmt.setString(1, prod.getNome());
        stmt.setString(2, prod.getTipo());
        stmt.setInt(3, prod.getQtd());
        stmt.setFloat(4, prod.getValor());
        stmt.setFloat(5, prod.getPeso());
        stmt.setInt(6, prod.getId_p());
        // executa
        
        stmt.execute();
        stmt.close();
        return prod;
    }
    
    public Produto exclui(Produto prod) throws SQLException{
        String sql = "delete from produto WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,prod.getId_p());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return prod;
    }
    
    public List<Produto> lista(Produto prod) throws SQLException{
         // estoques: array armazena a lista de registros

        List<Produto> produtos = new ArrayList<>();
        
        String sql = "select * from produto where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + prod.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Estoque
            Produto p = new Produto(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getInt(4),
                    rs.getFloat(5),
                    rs.getFloat(6)
            );
            // adiciona o estoque à lista de estoques
            produtos.add(p);
        }
        
        rs.close();
        stmt.close();
        return produtos; 
    }
    
    public Produto inseri(Produto prod) throws SQLException{
        String sql = "insert into produto" + " (nome, tipo, qtd, valor, peso)" + " values (?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1, prod.getNome());
        stmt.setString(2, prod.getTipo());
        stmt.setInt(3, prod.getQtd());
        stmt.setFloat(4, prod.getValor());
        stmt.setFloat(5, prod.getPeso());
        
        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
           prod.setId_p(id);
        }
        stmt.close();
        return prod;
    }   
}
