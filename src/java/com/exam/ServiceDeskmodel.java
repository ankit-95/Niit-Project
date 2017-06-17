/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import org.hibernate.validator.constraints.NotBlank;

/**
 *
 * @author ANKIT
 */
public class ServiceDeskmodel {
   @NotBlank(message="Field Can't be NULL")
   private String sno;
   @NotBlank(message="Field Can't be NULL")
   private String bcode;
   @NotBlank(message="Field Can't be NULL")
   private String operation;

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public String getOperation() {
        return operation;
    }
   
   

    public void setSno(String sno) {
        this.sno = sno;
    }

    public void setBcode(String bcode) {
        this.bcode = bcode;
    }

    public String getBcode() {
        return bcode;
    }

    public String getSno() {
        return sno;
    }
   
   
    
}
