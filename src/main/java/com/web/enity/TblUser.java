package com.web.enity;

import java.util.List;

public class TblUser {
    private String userid;
    private String upass;
    private String uname;
    private String uage;
    private String usex;
    private String uedu;
    private String ujob;
    private String uphone;
    private String uemail;
    private String uscore;
    private String ustate;
    private String uupload;
    private String udownload;
    private String uregdate;
    private String uheader;
    private List<String> ulist;
    private List<TblDoc> dlist;

    public TblUser() {
    }

    public TblUser(String userid, String upass) {
        this.userid = userid;
        this.upass = upass;
    }

    public TblUser(String userid, String upass, String uname, String uage, String usex, String uedu, String ujob, String uphone, String uemail, String uscore, String ustate, String uupload, String udownload, String uregdate, String uheader, List<String> ulist, List<TblDoc> dlist) {
        this.userid = userid;
        this.upass = upass;
        this.uname = uname;
        this.uage = uage;
        this.usex = usex;
        this.uedu = uedu;
        this.ujob = ujob;
        this.uphone = uphone;
        this.uemail = uemail;
        this.uscore = uscore;
        this.ustate = ustate;
        this.uupload = uupload;
        this.udownload = udownload;
        this.uregdate = uregdate;
        this.uheader = uheader;
        this.ulist = ulist;
        this.dlist = dlist;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUage() {
        return uage;
    }

    public void setUage(String uage) {
        this.uage = uage;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public String getUedu() {
        return uedu;
    }

    public void setUedu(String uedu) {
        this.uedu = uedu;
    }

    public String getUjob() {
        return ujob;
    }

    public void setUjob(String ujob) {
        this.ujob = ujob;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUscore() {
        return uscore;
    }

    public void setUscore(String uscore) {
        this.uscore = uscore;
    }

    public String getUstate() {
        return ustate;
    }

    public void setUstate(String ustate) {
        this.ustate = ustate;
    }

    public String getUupload() {
        return uupload;
    }

    public void setUupload(String uupload) {
        this.uupload = uupload;
    }

    public String getUdownload() {
        return udownload;
    }

    public void setUdownload(String udownload) {
        this.udownload = udownload;
    }

    public String getUregdate() {
        return uregdate;
    }

    public void setUregdate(String uregdate) {
        this.uregdate = uregdate;
    }

    public String getUheader() {
        return uheader;
    }

    public void setUheader(String uheader) {
        this.uheader = uheader;
    }

    public List<String> getUlist() {
        return ulist;
    }

    public void setUlist(List<String> ulist) {
        this.ulist = ulist;
    }

    public List<TblDoc> getDlist() {
        return dlist;
    }

    public void setDlist(List<TblDoc> dlist) {
        this.dlist = dlist;
    }
}
