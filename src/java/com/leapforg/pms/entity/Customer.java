/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapforg.pms.entity;

import java.util.Date;

/**
 *
 * @author dell
 */
public class Customer {
    
    private int cid;
    private String full_name, dob, email,password,address, contact;

    public Customer() {
    }

    public Customer(int cid, String full_name, String dob, String email, String password, String address, String contact) {
        this.cid = cid;
        this.full_name = full_name;
        this.dob = dob;
        this.email = email;
        this.password = password;
        this.address = address;
        this.contact = contact;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    
    
}
