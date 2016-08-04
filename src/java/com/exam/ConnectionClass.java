/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ConnectionClass {
    
    public boolean getParameters(String uname, String pwd) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select * from user where uname=? and pwd=?");
        ps.setString(1, uname);
        ps.setString(2, pwd);
        ResultSet rs =  ps.executeQuery();
        if(rs.next())
        {
            return true;
        }
        
        return false;
        
    }
    public ArrayList<ArrayList> getProduct() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        ArrayList <ArrayList> arr = new ArrayList<>();
        ArrayList <String> a1 = new ArrayList<>();
        ArrayList <String> a2 = new ArrayList<>();
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select * from productmodel;");
        ResultSet rs = ps.executeQuery();
        while(rs.next())
        {
             a1.add(rs.getString(1));
             a2.add(rs.getString(2));
        }   
            
                 arr.add(a1);
               arr.add(a2);
                return arr;
   
    }
      public boolean getProduct(String pcode, String pdesp) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("insert into productmodel values(?,?);");
        ps.setString(1, pcode);
        ps.setString(2, pdesp);
        int x =  ps.executeUpdate();
        if(x>0)
        {
            return true;
        }
        
        return false;
        
    }
  
}
