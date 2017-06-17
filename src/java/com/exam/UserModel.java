/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotBlank;

/**
 *
 * @author ANKIT
 */
public class UserModel {
    @NotBlank(message="Wrong Credentials ")
    @Size(min = 1,max = 7,message="Wrong Size(Should be between 1 to 7)")
    private String uname;
    @NotBlank(message="Wrong Credentials ")

    @Size(min = 1,max = 7,message="Wrong Size(Should be between 1 to 7)")
   
    private String pwd;

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUname() {
        return uname;
    }

  
    
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

  
    public String getPwd() {
        return pwd;
    }
    
}
