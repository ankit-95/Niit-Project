/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

/**
 *
 * @author ANKIT
 */
public class ServiceDeskmodel {
    
   private String sno;
   private String bcode;
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
