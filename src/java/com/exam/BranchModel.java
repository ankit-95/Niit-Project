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
public class BranchModel {
    @NotBlank(message="Field Can't be NULL")
    private String bcode;
    @NotBlank(message="Field Can't be NULL")
    private String blocation;

    public void setBcode(String bcode) {
        this.bcode = bcode;
    }

    public void setBlocation(String blocation) {
        this.blocation = blocation;
    }

    public String getBcode() {
        return bcode;
    }

    public String getBlocation() {
        return blocation;
    }
    
    
    
}
