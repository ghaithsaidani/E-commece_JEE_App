package com.example.ilprojetfinale.model;

import java.util.Date;

public class user {
    private int id;
    private String username;
    private String mail;
    private String password;
    private long phone;
    private String adress;


    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }



    public user(int id, String username, String mail, String password,long phone, String adress) {
        this.id = id;
        this.username = username;
        this.mail = mail;
        this.password = password;
        this.phone = phone;
        this.adress = adress;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
