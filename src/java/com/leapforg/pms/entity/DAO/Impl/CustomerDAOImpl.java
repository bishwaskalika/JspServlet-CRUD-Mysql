/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapforg.pms.entity.DAO.Impl;

import com.leapforg.pms.constant.SqlConstant;
import com.leapforg.pms.db.DbConnection;
import com.leapforg.pms.entity.Customer;
import com.leapforg.pms.entity.DAO.CustomerDAO;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dell
 */
public class CustomerDAOImpl implements CustomerDAO {

    private DbConnection db = new DbConnection();
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    
    @Override
    public int insert(Customer users) throws SQLException, ClassNotFoundException {
        db.open();
        stmt = db.initStatement(SqlConstant.CUSTOMER_INSERT);
        stmt.setString(1, users.getFull_name());
        stmt.setString(2, users.getDob());
        stmt.setString(3, users.getEmail());
        stmt.setString(4, users.getPassword());
        stmt.setString(5, users.getAddress());
        stmt.setString(6, users.getContact()); 
        int result = stmt.executeUpdate();
        db.close();
        return result;
    }

    @Override
    public int update(Customer users) throws SQLException, ClassNotFoundException {
        db.open();
        stmt = db.initStatement(SqlConstant.CUSTOMER_UPDATE);
        stmt.setString(1, users.getFull_name());
        stmt.setString(2,  users.getDob());
        stmt.setString(3, users.getEmail());
        stmt.setString(4, users.getPassword());
        stmt.setString(5, users.getAddress());
        stmt.setString(6, users.getContact());
        int result = db.executeUpdate();
        db.close();

        return result;
    }

    @Override
    public int delete(int id) throws SQLException, ClassNotFoundException {
        
        db.open();
        stmt = db.initStatement(SqlConstant.CUSTOMER_DELETE);
        stmt.setInt(1, id);
        int result = db.executeUpdate();
        db.close();
        return result;
    }

    @Override
    public Customer getById(int id) throws SQLException, ClassNotFoundException {
         db.open();
        stmt = db.initStatement(SqlConstant.CUSTOMER_GETUSERBYID);
        stmt.setInt(1, id);
        rs = db.executeQuery();

        if (rs.next()) {

            Customer customer = new Customer();
            customer.setCid(rs.getInt("cid"));
            customer.setFull_name(rs.getString("full_name"));
            customer.setDob(rs.getString("dob"));
            customer.setEmail(rs.getString("email"));
            customer.setPassword(rs.getString("password"));
            customer.setAddress(rs.getString("address"));
            customer.setContact(rs.getString("contact"));
            
            db.close();
            return customer;
        }
        return null;
    }

    @Override
    public List<Customer> getAll() throws SQLException, ClassNotFoundException {
        
     List<Customer> CustomerList = new ArrayList<>();
        db.open();
        db.initStatement(SqlConstant.CUSTOMER_GETALL);

        ResultSet rs = db.executeQuery();
        while (rs.next()) {
            Customer customer = new Customer();
            customer.setCid(rs.getInt("cid"));
            customer.setFull_name(rs.getString("full_name"));
            customer.setDob(rs.getString("dob"));
            customer.setEmail(rs.getString("email"));
            customer.setPassword(rs.getString("password"));
            customer.setAddress(rs.getString("address"));
             customer.setContact(rs.getString("contact"));

            CustomerList.add(customer);
        }
        db.close();
        return CustomerList;
    
    
    }

   
       
    
}
