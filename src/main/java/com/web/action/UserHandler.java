package com.web.action;

import com.web.biz.UserBiz;
import com.web.enity.TblAdmin;
import com.web.enity.TblUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserHandler {

    @Resource
    private UserBiz userBizImpl;

    @RequestMapping("/clientLogin.action")
    public ModelAndView clientLogin(String userid ,String upass)
    {
        System.out.println("进入前台登录方法");
        System.out.println("前台数据：" + userid + upass);

        TblUser user= userBizImpl.clientLogin(userid,upass);
        System.out.println(user);
        ModelAndView mav = new ModelAndView();
        if(null != user)
        {
            mav.setViewName("clientIndex");
        }
        else
        {
            mav.setViewName("clientLogin");
        }
        return mav;
    }

    @RequestMapping("/backLogin.action")
    public ModelAndView backLogin(String aid ,String apass)
    {
        System.out.println("进入后台登录方法");
        System.out.println("前台数据：" + aid + apass);

        TblAdmin admin = userBizImpl.backLogin(aid ,apass);
        System.out.println(admin);
        ModelAndView mav = new ModelAndView();
        if(null != admin)
        {
            mav.setViewName("backCenter");
        }
        else
        {
            mav.setViewName("backLogin");
        }
        return mav;
    }
}
