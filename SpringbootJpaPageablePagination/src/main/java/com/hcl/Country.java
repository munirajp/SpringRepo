package com.hcl;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
 
@Entity
public class Country {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    private String code;
    private String name;
 
    public int getId() {
        return id;
    }
 
  
    public void setId(int id) {
        this.id = id;
    }
 
   
    public String getCode() {
        return code;
    }
 
  
    public void setCode(String code) {
        this.code = code;
    }
 
    public String getName() {
        return name;
    }
 
  
    public void setName(String name) {
        this.name = name;
    }
    
  
}