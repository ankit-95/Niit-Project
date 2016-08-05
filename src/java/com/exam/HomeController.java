/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.jboss.weld.context.http.Http;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ANKIT
 */
@Controller
public class HomeController {
  
    ArrayList<String> ar = new ArrayList<>();
       
    int count=1;
        
    HttpSession sess = null;
    @RequestMapping(value="/")
    public String startPage()
    {
        return "StartPage";
    }
    @ModelAttribute(value="myUser")
    public UserModel newUser()
    {
        return new UserModel();
    }
    
    @RequestMapping(value = "/LoginForm",method = RequestMethod.GET)
    public String gotoLogin()
    {
        return "LoginForm";
    }
    @RequestMapping(value = "/LoginForm",method = RequestMethod.POST)
    public ModelAndView validateLogin(@ModelAttribute("myUser") UserModel myUser,HttpServletRequest req) throws ClassNotFoundException, SQLException
    {
        sess= req.getSession();
        System.out.println(sess);
        
        String uname = myUser.getUname();
        String pwd = myUser.getPwd();
        ModelAndView mv = null;
        String msg=null;
        ConnectionClass c = new  ConnectionClass();
       if(c.getParameters(uname, pwd))
        {
            mv = new ModelAndView("Success");
            return mv;
        }
        else
        {
            mv = new ModelAndView("LoginForm","msg","Invalid Username or Password.");
            return mv;
       
            }
    }
    @RequestMapping(value="/WelcomeCust",method=RequestMethod.GET)
    public String welcomeCust()
    {
        return  "WelcomeCust";        
    }
    
    @RequestMapping(value="/GenTicket",method = RequestMethod.POST)
    public String generateTicket(HttpServletRequest req)
    {
        String ticket = req.getParameter("Service");
        String tno;
        if(ticket.equals("Select...."))
        {
            count=1;
            ar.clear();
        }
        else if(ticket.equals("Saving Account"))
        {
            tno="Ticket Number is : sa"+count;
            count++;
            ar.add(tno);
            req.setAttribute("tno", tno);
            
        }
        else if(ticket.equals("Current Account"))
        {
            tno="Ticket Number is : ca"+count;
            count++;
            ar.add(tno);
            req.setAttribute("tno", tno);
            
        }
        else if(ticket.equals("Fixed Deposit"))
        {
            tno="Ticket Number is : fd"+count;
            count++;
            ar.add(tno);
            req.setAttribute("tno", tno);
            
        }
        else if(ticket.equals("Debit Card"))
        {
            tno="Ticket Number is : dc"+count;
            count++;
            ar.add(tno);
            req.setAttribute("tno", tno);
            
        }
        else if(ticket.equals("Credit Card"))
        {
            tno="Ticket Number is : cc"+count;
            count++;
            ar.add(tno);
            req.setAttribute("tno", tno);
            
        }
        else if(ticket.equals("Loan"))
        {
            tno="Ticket Number is : l"+count;
            count++;
            ar.add(tno);
            req.setAttribute("tno", tno);
            
        }
            return  "WelcomeCust";
    }
    @RequestMapping (value="/CentralDisplay",method = RequestMethod.GET)
    public String centralDisplay(HttpServletRequest req)
    {
        req.setAttribute("Array", ar);
        return "centralDisplay";
    }
    
    @RequestMapping(value = "/Product",method = RequestMethod.GET)
    public String productShow(HttpServletRequest req ) throws ClassNotFoundException, SQLException
    {
        int count=1;
        ConnectionClass c = new ConnectionClass();
        ArrayList<ArrayList> arr = c.getProduct();
        for(ArrayList<String> a : arr)
        {
          req.setAttribute("Product"+count, a);
          count=2;
      
        }
        return "Product";
    }
    
    @ModelAttribute(value = "myProduct")
    public ProductModel newProduct()
    {
        return new ProductModel();
    }
    
    @RequestMapping(value = "ProductCreate",method = RequestMethod.GET)
    public String productCheck(HttpServletRequest req)
    {
        String btnPressed = req.getParameter("btn1");
        System.out.println(btnPressed);
        if(btnPressed.equals("Create"))
        {
          return "Create";
        }
        else if(btnPressed.equals("Modify"))
        {
            return "Modify";
        }
        else if(btnPressed.equals("Delete"))
        {
            return "Delete";
        }
        return "Product";
    }
    
    @RequestMapping(value = "/ProductCreate",method = RequestMethod.POST)
    public ModelAndView createProduct(@ModelAttribute(value = "myProduct") ProductModel myProductModel) throws ClassNotFoundException, SQLException
     
    {
        ConnectionClass c = new ConnectionClass();
       String pcode = myProductModel.getPcode();
       String pdesp = myProductModel.getPdesp();
       if(c.addProduct(pcode, pdesp))
       {
           return new ModelAndView("Create","msg","Product Added SuccessFully");
       }
       else
       {
           return new ModelAndView("Create","msg","There was some problem.");
           
       }
    }
    
    @RequestMapping (value="/ProductDelete",method = RequestMethod.GET)
    public ModelAndView productDel(@ModelAttribute(value = "myProduct") ProductModel myProduct) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String pcode= myProduct.getPcode();
        if(c.delProduct(pcode))
        return new ModelAndView("Delete","msg","Record Deleted Successfuly.");
        else
        return new ModelAndView("Delete","msg","Such Record Does not Exist.");
            
    }
    
    @RequestMapping(value = "/ProductModify",method = RequestMethod.GET)
    public ModelAndView productModify(@ModelAttribute (value = "myProduct") ProductModel myProductModel) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String pcode = myProductModel.getPcode();
        String pdesp = myProductModel.getPdesp();
        if(c.checkProduct(pcode))
        {
            c.modifyProduct(pcode, pdesp);
            return new ModelAndView("Modify","msg","Product Updated Successfully.");
        }
        else
        {
        return new ModelAndView("Modify","msg","Record Does Not Exist.");
        }
        }
    
}