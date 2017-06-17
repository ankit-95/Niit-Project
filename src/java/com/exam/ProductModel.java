/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import org.hibernate.validator.constraints.NotBlank;

public class ProductModel {
   @NotBlank(message="Field Can't be NULL")
    private String pcode;
   @NotBlank(message="Field Can't be NULL")
    private String pdesp;

    public void setPcode(String pcode) {
        this.pcode = pcode;
    }

    public void setPdesp(String pdesp) {
        this.pdesp = pdesp;
    }

    public String getPcode() {
        return pcode;
    }

    public String getPdesp() {
        return pdesp;
    }
    
    
    
}
