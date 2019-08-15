/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backendxpto.dao;

import backendxpto.bean.Pedido;
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
public class PedidoDao {
    private final Connection c;
    
    public PedidoDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Pedido busca(Pedido ped) throws SQLException{
        String sql = "select * from pedido  WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,ped.getIdPed());
            // executa
            ResultSet rs = stmt.executeQuery();
            Pedido retorno = null;
            while (rs.next()) {      
            // criando o objeto Cliente
                retorno = new Pedido (
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getInt(4),
                    rs.getString(5),
                    rs.getFloat(6));
            // adiciona o cliente à lista de clientes
            }
            stmt.close();
        return retorno;
   }
    
    public Pedido altera(Pedido ped) throws SQLException{
        String sql = "UPDATE pedido SET idCli = ?, idProd = ?, idEst =?, dat = ?, valor = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        
        stmt.setInt(1, ped.getIdCli());
        stmt.setInt(2, ped.getIdProd());
        stmt.setInt(3, ped.getIdEst());
        stmt.setString(4, ped.getData());
        stmt.setFloat(5, ped.getValorPed());
        stmt.setInt(6, ped.getIdPed());
        // executa
        
        stmt.execute();
        stmt.close();
        return ped;
    }
    
    public Pedido exclui(Pedido ped) throws SQLException{
        String sql = "delete from pedido WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,ped.getIdPed());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return ped;
    }
    
    public List<Pedido> lista(Pedido ped) throws SQLException{
         // estoques: array armazena a lista de registros

        List<Pedido> pedidos = new ArrayList<>();
        
        String sql = "select * from pedido where id like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + ped.getIdPed() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Estoque
            Pedido pe = new Pedido(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getInt(4),
                    rs.getString(5),
                    rs.getFloat(6)
            );
            // adiciona o estoque à lista de estoques
            pedidos.add(pe);
        }
        
        rs.close();
        stmt.close();
        return pedidos; 
    }
    
    public Pedido inseri(Pedido ped) throws SQLException{
        String sql = "insert into pedido" + " (idCli, idProd, idEst, dat, valor)" + " values (?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
        
        // seta os valores
        stmt.setInt(1, ped.getIdCli());
        stmt.setInt(2, ped.getIdProd());
        stmt.setInt(3, ped.getIdEst());
        stmt.setString(4, ped.getData());
        stmt.setFloat(5, ped.getValorPed());
        
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
           ped.setIdPed(id);
        }
        stmt.close();
        return ped;
    }   
}
