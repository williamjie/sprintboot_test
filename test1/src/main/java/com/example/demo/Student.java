package com.example.demo;

/**
 * Created by zj on 2018/3/30.
 */
public class Student {
    private Integer     sId;
    private String      sName;
    private String      gender;

    public Integer getsId(){
        return sId;
    }

    public void setsId(Integer sId){
        this.sId = sId;
    }

    public String getsName(){
        return sName;
    }

    public void setsName(String sName){
        this.sName = sName;
    }

    public String getgender(){
        return gender;
    }

    public void setgender(String gender){
        this.gender = gender;
    }

}
