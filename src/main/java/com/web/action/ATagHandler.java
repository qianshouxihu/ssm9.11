package com.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/a")
public class ATagHandler {
    //测试github是否能识别修改
    public void testGitHub()
    {

    }


    @RequestMapping("/backLogin.action")
    public String toBackLogin(){
        return "backLogin";
    }

    @RequestMapping("/clientReg.action")
    public String toClientReg()
    {
        return "clientReg";
    }

    @RequestMapping("/clientLogin.action")
    public String toClientLogin()
    {
        return "clientLogin";
    }

    @RequestMapping("/backUserList.action")
    public String toBackUserList()
    {
        return "backUserList";
    }
}
