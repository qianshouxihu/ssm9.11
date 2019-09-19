package com.web.biz;


import com.web.enity.TblAdmin;
import com.web.enity.TblUser;
import com.web.mapper.TblUserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service//业务层注解
public class UserBizImpl implements UserBiz {

    @Resource//IOC依赖注入
    private TblUserMapper tblUserMapper;

    //前台登录
    @Override
    public TblUser clientLogin(String userid, String upass) {
        TblUser user = tblUserMapper.clientLogin( userid,  upass);
        return user;
    }

    //后台登录
    @Override
    public TblAdmin backLogin(String aid, String apass) {
        TblAdmin admin = tblUserMapper.backLogin( aid , apass);
        return admin;
    }

    //账号重复验证
    @Override
    public boolean checkUserid(String userid) {
        TblUser user = tblUserMapper.checkUserid(userid);
        boolean flag = false;
        if(null != user)
        {
            flag = true;
        }
        return flag;
    }

    @Override
    public boolean reg(TblUser user) {
        int num = tblUserMapper.reg(user);
        if(num > 0 )
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}
