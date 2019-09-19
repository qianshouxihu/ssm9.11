package com.web.biz;


import com.web.enity.TblAdmin;
import com.web.enity.TblUser;

public interface UserBiz {

    public TblUser clientLogin(String userid, String upass);//前台登录验证
    public TblAdmin backLogin(String aid, String apass);//后台登录验证
    public boolean checkUserid(String userid);//账号重复验证
    public boolean reg(TblUser user);//注册
//    public boolean onoff(String userid, String ustate);//启用禁用用户
//    public boolean delete(String userid);//删除用户
//    public List<TblUser> updateList(String beginDate, String endDate, String userid, int pageNo);//更新列表

}
