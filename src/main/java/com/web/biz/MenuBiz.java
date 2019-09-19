package com.web.biz;

import com.web.enity.TblUser;

import java.util.List;

public interface MenuBiz {
    public List<TblUser> getUserList(String beginDate , String endDate , String userid , int limit , int page);
    public Integer getCount(String beginDate , String endDate , String userid);
}
