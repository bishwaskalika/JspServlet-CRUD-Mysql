/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapforg.pms.constant;

/**
 *
 * @author AM3ET
 */
public class SqlConstant {

   
    public static String CUSTOMER_INSERT =  " INSERT INTO " + TableConstant.CUSTOMER + " (full_name,dob,email,password,address,contact) VALUES(?,?,?,?,?,?)";
   
    public static String CUSTOMER_UPDATE  = " UPDATE " + TableConstant.CUSTOMER + " SET full_name=?,dob=?,email=?,password=?,address=?,contact=? WHERE cid=?";
    
    public static String CUSTOMER_DELETE = " DELETE FROM " + TableConstant.CUSTOMER + " WHERE cid = ?";
    
    public static String CUSTOMER_GETUSERBYID =" SELECT * FROM " + TableConstant.CUSTOMER + " WHERE cid=?";
    
    public static String CUSTOMER_GETALL = " SELECT * FROM " + TableConstant.CUSTOMER;


  
    
    


    
}
