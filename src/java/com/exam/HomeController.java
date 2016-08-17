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
import org.springframework.ui.Model;
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
            req.setAttribute("try", "false");
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
          return "Createproduct";
        }
        else if(btnPressed.equals("Modify"))
        {
            return "Modifyproduct";
        }
        else if(btnPressed.equals("Delete"))
        {
            return "Deleteproduct";
        }
        else
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
           return new ModelAndView("Createproduct","msg","Product Added SuccessFully");
       }
       else
       {
           return new ModelAndView("Createproduct","msg","There was some problem.");
           
       }
    }
    
    @RequestMapping (value="/ProductDelete",method = RequestMethod.GET)
    public ModelAndView productDel(@ModelAttribute(value = "myProduct") ProductModel myProduct) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String pcode= myProduct.getPcode();
        if(c.delProduct(pcode))
        return new ModelAndView("Deleteproduct","msg","Record Deleted Successfuly.");
        else
        return new ModelAndView("Deleteproduct","msg","Such Record Does not Exist.");
            
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
            return new ModelAndView("Modifyproduct","msg","Product Updated Successfully.");
        }
        else
        {
        return new ModelAndView("Modifyproduct","msg","Record Does Not Exist.");
        }
        }
    
    @RequestMapping(value = "/Branch",method = RequestMethod.GET)
    public String branchShow(HttpServletRequest req ) throws ClassNotFoundException, SQLException
    {
        int flag=1;
        ConnectionClass c = new ConnectionClass();
        ArrayList<ArrayList> arr = c.getBranch();
        for(ArrayList<String> a : arr)
        {
          req.setAttribute("Branch"+flag, a);
          flag++;
      
        }
        return "Branch";
    }
    
    @ModelAttribute(value = "myBranch")
    public BranchModel newBranch()
    {
        return new BranchModel();
    }
    
    @RequestMapping(value = "/BranchCreate",method = RequestMethod.GET)
    public String BranchCheck(HttpServletRequest req)
    {
        String btnPressed = req.getParameter("btn1");
        System.out.println(btnPressed);
        if(btnPressed.equals("Create"))
        {
          return "Createbranch";
        }
        else if(btnPressed.equals("Modify"))
        {
            return "Modifybranch";
        }
        else if(btnPressed.equals("Delete"))
        {
            return "Deletebranch";
        }
        else
        return "Branch";
    }
    
     @RequestMapping(value = "/BranchCreate",method = RequestMethod.POST)
    public ModelAndView createBranch(@ModelAttribute(value = "myBranch") BranchModel myBranch) throws ClassNotFoundException, SQLException
     
    {
        ConnectionClass c = new ConnectionClass();
       String bcode = myBranch.getBcode();
       String blocation = myBranch.getBlocation();
        if(c.addBranch(bcode, blocation))
       {
           return new ModelAndView("Createbranch","msg","Branch Added SuccessFully");
       }
       else
       {
           return new ModelAndView("Createbranch","msg","There was some problem.");
           
       }
    }
   
     @RequestMapping (value="/BranchDelete",method = RequestMethod.GET)
    public ModelAndView branchDel(@ModelAttribute(value = "myBranch") BranchModel myBranch) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String bcode= myBranch.getBcode();
        if(c.delBranch(bcode))
        return new ModelAndView("Deletebranch","msg","Branch Deleted Successfuly.");
        else
        return new ModelAndView("Deletebranch","msg","Such Record Does not Exist.");
            
    }

    @RequestMapping(value = "/BranchModify",method = RequestMethod.GET)
    public ModelAndView branchModify(@ModelAttribute (value = "myBranch") BranchModel myBranch) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String bcode = myBranch.getBcode();
        String blocation = myBranch.getBlocation();
        if(c.checkBranch(bcode))
        {
            c.modifyBranch(bcode, blocation);
            return new ModelAndView("Modifybranch","msg","Branch Updated Successfully.");
        }
        else
        {
        return new ModelAndView("Modifybranch","msg","Record Does Not Exist.");
        }
        }

        @RequestMapping(value = "/BankingOfficer",method = RequestMethod.GET)
    public String boShow(HttpServletRequest req ) throws ClassNotFoundException, SQLException
    {
        int flag=1;
        ConnectionClass c = new ConnectionClass();
        ArrayList<ArrayList> arr = c.getBO();
        for(ArrayList<String> a : arr)
        {
          req.setAttribute("Bo"+flag, a);
          flag++;
      
        }
        return "BankingOfficer";
    }
    
     @ModelAttribute(value = "myBo")
    public BOModel newBo()
    {
        return new BOModel();
    }
    
    @RequestMapping(value = "/BoCreate",method = RequestMethod.GET)
    public String BoCheck(HttpServletRequest req)
    {
        String btnPressed = req.getParameter("btn1");
        System.out.println(btnPressed);
        if(btnPressed.equals("Create"))
        {
          return "Createbo";
        }
        else if(btnPressed.equals("Modify"))
        {
            return "Modifybo";
        }
        else if(btnPressed.equals("Delete"))
        {
            return "Deletebo";
        }
        else
        return "BankingOfficer";
    }
    
    @RequestMapping(value = "/BoCreate",method = RequestMethod.POST)
    public ModelAndView createBo(@ModelAttribute(value = "myBo") BOModel myBo) throws ClassNotFoundException, SQLException
     
    {
        ConnectionClass c = new ConnectionClass();
        String bocode = myBo.getBocode();
        String boname = myBo.getBoname();
        String bouname = myBo.getBouname();
        String bopwd = myBo.getBopwd();
        if(c.addBo(bocode,boname,bouname,bopwd))
       {
           return new ModelAndView("Createbo","msg","Banking Officer Added SuccessFully");
       }
       else
       {
           return new ModelAndView("Createbo","msg","There was some problem.");
           
       }
    }
    
     @RequestMapping (value="/BoDelete",method = RequestMethod.GET)
    public ModelAndView boDel(@ModelAttribute(value = "myBo") BOModel myBo) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String bocode= myBo.getBocode();
        if(c.delBo(bocode))
        return new ModelAndView("Deletebo","msg","Banking Officer Deleted Successfuly.");
        else
        return new ModelAndView("Deletebo","msg","Such Record Does not Exist.");
            
    }
    
     @RequestMapping(value = "/BoModify",method = RequestMethod.GET)
    public ModelAndView checkboModify(@ModelAttribute (value = "myBo") BOModel myBo) throws ClassNotFoundException, SQLException
    {
        
        ConnectionClass c = new ConnectionClass();
        String bocode = myBo.getBocode();
        String bohelp = myBo.getBohelp();
       if(c.checkBo(bocode))
        {
            if(bohelp.equals("boname"))
            {
            return new ModelAndView("Modifybo","msg",bohelp);
                  }
            else if(bohelp.equals("bouname"))
            {
            return new ModelAndView("Modifybo","msg",bohelp);
                
            }
            else if(bohelp.equals("bopwd"))
            {
            return new ModelAndView("Modifybo","msg",bohelp);
                
            }
        }
        
        return new ModelAndView("Modifybo","msg","Record Does Not Exist.");
        
        }
     
     @RequestMapping(value = "/updateBO",method =RequestMethod.GET)
     public ModelAndView upadteBO(@ModelAttribute(value = "myBo") BOModel myBo) throws ClassNotFoundException, SQLException
     {
         String bocode = myBo.getBocode();
         String bohelp=myBo.getBohelp();
         ConnectionClass c = new ConnectionClass();
         if(bohelp.equals("boname"))
         {
             String boname= myBo.getBoname();
             c.updateBO(bocode,boname,bohelp);
         }
         else if(bohelp.equals("bouname"))
         {
             String bouname= myBo.getBouname();
             c.updateBO(bocode,bouname,bohelp);
       
         }
         else if(bohelp.equals("bopwd"))
         {
             String bopwd = myBo.getBopwd();
                   c.updateBO(bocode,bopwd,bohelp);
       
         }
         return new ModelAndView("Modifybo","tt","Banking Officer Updated Successfully.");
     }
    
    
    
    @ModelAttribute(value = "myBo")
    public BOModel newbieBo()
    {
        return new BOModel();
    }
   
    
    @RequestMapping(value = "/LoginBank",method = RequestMethod.GET)
    public String gotoBoLogin()
    {
        return "LoginBank";
    }
    @RequestMapping(value = "/LoginBank",method = RequestMethod.POST)
    public ModelAndView validateLogin(@ModelAttribute("myBo") BOModel myBo,HttpServletRequest req) throws ClassNotFoundException, SQLException
    {
        sess= req.getSession();
        
        String bouname = myBo.getBouname();
        String bopwd = myBo.getBopwd();
        ModelAndView mv1 = null;
        String msg=null;
        ConnectionClass c = new  ConnectionClass();
       if(c.getBoParameters(bouname, bopwd))
        {
            mv1 = new ModelAndView("SuccessBank");
            return mv1;
        }
        else
        {
            req.setAttribute("try", "false");
            mv1 = new ModelAndView("LoginBank","msg","Invalid Username or Password.");
            return mv1;
       
            }
    }
    
    @RequestMapping(value = "/BankInc",method = RequestMethod.GET)
    public ModelAndView delBank(HttpServletRequest req)
    {
            
        if(ar.isEmpty())
        {
            
            return new ModelAndView("SuccessBank","msg","Queue is Empty.");
     
            
        }
            else
        {
             req.setAttribute("Array", ar);
             String x = ar.get(0);
             ar.remove(0);     
             return new ModelAndView("SuccessBank","msg",x+" is deletetd From the Queue.");
        }
        
    }
    
    @RequestMapping(value = "/Servicedesk",method = RequestMethod.GET)
    public String getServicedesk(HttpServletRequest req) throws ClassNotFoundException, SQLException
    {
        int flag=1;
        ConnectionClass c = new ConnectionClass();
        ArrayList<ArrayList> arr = c.getServicedesk();
        for(ArrayList<String> a : arr)
        {
          req.setAttribute("Servicedesk"+flag, a);
          flag++;
      
        }
        return "Servicedesk";
    }
        
    @ModelAttribute(value = "mySD")
    public ServiceDeskmodel newSD()
    {
        return new ServiceDeskmodel();
    }
    
    @RequestMapping(value = "/SDCreate",method = RequestMethod.GET)
    public String sdCheck(HttpServletRequest req)
    {
        String btnPressed = req.getParameter("btn1");
        System.out.println(btnPressed);
        if(btnPressed.equals("Create"))
        {
          return "Createsd";
        }
        else if(btnPressed.equals("Modify"))
        {
            return "Modifysd";
        }
        else if(btnPressed.equals("Delete"))
        {
            return "Deletesd";
        }
        return "Servicedesk";
    }
    
    @RequestMapping(value = "/SDCreate",method = RequestMethod.POST)
    public ModelAndView createSD(@ModelAttribute(value = "mySD") ServiceDeskmodel mySD) throws ClassNotFoundException, SQLException
     
    {
        ConnectionClass c = new ConnectionClass();
       String sno = mySD.getSno();
       String bcode = mySD.getBcode();
       if(c.addSD(sno,bcode))
       {
           return new ModelAndView("Createsd","msg","Service Desk Added SuccessFully");
       }
       else
       {
           return new ModelAndView("Createsd","msg","There was some problem.");
           
       }
    }
    
     @RequestMapping (value="/SDDelete",method = RequestMethod.GET)
    public ModelAndView sdDel(@ModelAttribute(value = "mySD") ServiceDeskmodel mySD) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String sno= mySD.getSno();
        if(c.delSd(sno))
        return new ModelAndView("Deletesd","msg","Service Desk Deleted Successfuly.");
        else
        return new ModelAndView("Deletesd","msg","Such Record Does not Exist.");
            
    }
    
    @RequestMapping(value = "/SDModify",method = RequestMethod.GET)
    public ModelAndView sdModify(@ModelAttribute (value = "mySD") ServiceDeskmodel mySD) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String sno = mySD.getSno();
        if(c.checkSD(sno))
        {
             return new ModelAndView("Modifysd","msg","Exist");
        }
        else
        {
        return new ModelAndView("Modifysd","msg","Record Does Not Exist.");
        }
        }

    @RequestMapping(value = "/updateSD",method = RequestMethod.GET)
    public ModelAndView upadteSd(@ModelAttribute(value = "mySD") ServiceDeskmodel mySD) throws ClassNotFoundException, SQLException
    {
        ConnectionClass c = new ConnectionClass();
        String sno = mySD.getSno();
        String bcode = mySD.getBcode();
        c.updatesd(sno,bcode);
        return new ModelAndView("Modifysd","tt","Servide Desk Updated Successfully.");
    }
        }

