package com.web.enity;

public class TblAdmin {
    private String aid;
    private String apass;
    private String aname;
    private String aage;
    private String asex;
    private String aphone;
    private String aemail;

    public TblAdmin() {
    }

    public TblAdmin(String aid, String apass) {
        this.aid = aid;
        this.apass = apass;
    }

    public TblAdmin(String aid, String apass, String aname, String aage, String asex, String aphone, String aemail) {
        this.aid = aid;
        this.apass = apass;
        this.aname = aname;
        this.aage = aage;
        this.asex = asex;
        this.aphone = aphone;
        this.aemail = aemail;
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getApass() {
        return apass;
    }

    public void setApass(String apass) {
        this.apass = apass;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAage() {
        return aage;
    }

    public void setAage(String aage) {
        this.aage = aage;
    }

    public String getAsex() {
        return asex;
    }

    public void setAsex(String asex) {
        this.asex = asex;
    }

    public String getAphone() {
        return aphone;
    }

    public void setAphone(String aphone) {
        this.aphone = aphone;
    }

    public String getAemail() {
        return aemail;
    }

    public void setAemail(String aemail) {
        this.aemail = aemail;
    }
}
