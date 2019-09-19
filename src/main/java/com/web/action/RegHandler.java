package com.web.action;

import com.web.biz.UserBizImpl;
import com.web.enity.TblUser;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/reg")
public class RegHandler {

    @Resource
    private UserBizImpl userBizImpl;

    @RequestMapping("/checkUserid.action")
    public @ResponseBody String checkUserid(String userid)
    {
        System.out.println(userid);
        boolean flag = userBizImpl.checkUserid(userid);
        if (flag)
        {
            return "fail";
        }
        else
        {
            return "success";
        }
    }

    @RequestMapping("/confirmReg.action")
    public String confirmReg( @RequestBody TblUser user)
    {
        System.out.println("前台数据："+user.getUserid());
        boolean flag = userBizImpl.reg(user);
        return "clientLogin";
    }
}
