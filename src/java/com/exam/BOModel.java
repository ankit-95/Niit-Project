/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotBlank;

/**
 *
 * @author ANKIT
 */
public class BOModel {
    @NotBlank(message="Field Can't be NULL")
    private String bocode;
    @NotBlank(message="Field Can't be NULL")
    private String boname;
    @NotBlank(message="Wrong Credentials ")
    @Size(min = 1,max = 10,message="Wrong Size(Should be between 1 to 10)")
    private String bouname;
    @NotBlank(message="Wrong Credentials ")
    @Size(min = 1,max = 7,message="Wrong Size(Should be between 1 to 7)")
    private String bopwd;
    @NotBlank(message="Field Can't be NULL")
    private String bohelp;

    public void setBohelp(String bohelp) {
        this.bohelp = bohelp;
    }

    public String getBohelp() {
        return bohelp;
    }

    
    public void setBocode(String bocode) {
        this.bocode = bocode;
    }

    public void setBoname(String boname) {
        this.boname = boname;
    }

    public void setBopwd(String bopwd) {
        this.bopwd = bopwd;
    }

    public void setBouname(String bouname) {
        this.bouname = bouname;
    }

    public String getBocode() {
        return bocode;
    }

    public String getBoname() {
        return boname;
    }

    public String getBopwd() {
        return bopwd;
    }

    public String getBouname() {
        return bouname;
    }
    
    
    
    
    
}
