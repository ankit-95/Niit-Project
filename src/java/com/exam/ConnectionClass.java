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
      public boolean addProduct(String pcode, String pdesp) throws ClassNotFoundException, SQLException
            
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
      public boolean delProduct(String pcode) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("delete from productmodel where pcode=?");
        ps.setString(1, pcode);
        int x =  ps.executeUpdate();
        if(x>0)
        {
             return true;
        }
        
        return false;
        
    }
       public boolean checkProduct(String pcode) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select pcode from productmodel where pcode=?");
        ps.setString(1, pcode);
        ResultSet rs =  ps.executeQuery();
        if(rs.next())
        {
             return true;
        }
        
        return false;
        
    }
        public boolean modifyProduct(String pcode,String pdesp) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        System.out.println(pdesp);
        PreparedStatement ps = con.prepareStatement("update productmodel set pdesp=? where pcode =? ");
        ps.setString(1, pdesp);
        ps.setString(2, pcode);
        int x = ps.executeUpdate();
        System.out.println(x);
        if(x>0)
        return true;
        else 
            return false;
    }
       
    public ArrayList<ArrayList> getBranch() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        ArrayList <ArrayList> arr = new ArrayList<>();
        ArrayList <String> a1 = new ArrayList<>();
        ArrayList <String> a2 = new ArrayList<>();
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select * from branchmodel");
        ResultSet rs = ps.executeQuery();
        while(rs.next())
        {
             a1.add(rs.getString(1));
             a2.add(rs.getString(2));
        }   
            
                 arr.add(a1);
               arr.add(a2);
               System.out.println(arr);
                return arr;
   
    }
   
       public boolean addBranch(String bcode, String blocation) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("insert into branchmodel values(?,?);");
        ps.setString(1, bcode);
        ps.setString(2, blocation);
        int x =  ps.executeUpdate();
        if(x>0)
        {
            return true;
        }
        
        return false;
        
    }
   
        public boolean delBranch(String bcode) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("delete from branchmodel where bcode=?");
        ps.setString(1, bcode);
        int x =  ps.executeUpdate();
        if(x>0)
        {
             return true;
        }
        
        return false;
        
    }
  
           public boolean checkBranch(String bcode) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select bcode from branchmodel where bcode=?");
        ps.setString(1, bcode);
        ResultSet rs =  ps.executeQuery();
        if(rs.next())
        {
             return true;
        }
        
        return false;
        
    }
        public boolean modifyBranch(String bcode,String blocation) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("update branchmodel set blocation=? where bcode =? ");
        ps.setString(1, blocation);
        ps.setString(2, bcode);
        int x = ps.executeUpdate();
        if(x>0)
        return true;
        else 
            return false;
    }
  
         public ArrayList<ArrayList> getBO() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        ArrayList <ArrayList> arr = new ArrayList<>();
        ArrayList <String> a1 = new ArrayList<>();
        ArrayList <String> a2 = new ArrayList<>();
        ArrayList <String> a3 = new ArrayList<>();
        ArrayList <String> a4 = new ArrayList<>();
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select * from bomodel");
        ResultSet rs = ps.executeQuery();
        while(rs.next())
        {
             a1.add(rs.getString(1));
             a2.add(rs.getString(2));
             a3.add(rs.getString(3));
           a4.add(rs.getString(4));
             
        }   
            
                 arr.add(a1);
               arr.add(a2);
              arr.add(a3);
               arr.add(a4);
               System.out.println(arr);
                return arr;
   
    }
  
           public boolean addBo(String bocode, String boname,String bouname,String bopwd) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("insert into bomodel values(?,?,?,?);");
        ps.setString(1, bocode);
        ps.setString(2, boname);
        ps.setString(3, bouname);
        ps.setString(4, bopwd);
        int x =  ps.executeUpdate();
        if(x>0)
        {
            return true;
        }
        
        return false;
        
    }
           
               public boolean delBo(String bocode) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("delete from bomodel where bocode=?");
        ps.setString(1, bocode);
        int x =  ps.executeUpdate();
        if(x>0)
        {
             return true;
        }
        
        return false;
        
    }
                 public boolean checkBo(String bocode) throws ClassNotFoundException, SQLException
            
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select bocode from bomodel where bocode=?");
        ps.setString(1, bocode);
        ResultSet rs =  ps.executeQuery();
        if(rs.next())
        {
             return true;
        }
        
        return false;
        
    }

    boolean getBoParameters(String bouname, String bopwd) throws ClassNotFoundException, SQLException 
    {
     Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select * from bomodel where bouname=? and bopwd=?");
        ps.setString(1, bouname);
        ps.setString(2, bopwd);
        ResultSet rs =  ps.executeQuery();
        if(rs.next())
        {
            return true;
        }
        
        return false;
        
    
    }

    public ArrayList<ArrayList> getServicedesk() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        ArrayList <ArrayList> arr = new ArrayList<>();
        ArrayList <String> a1 = new ArrayList<>();
        ArrayList <String> a2 = new ArrayList<>();
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
        PreparedStatement ps = con.prepareStatement("select * from servicedesk");
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
    
   
   
}
