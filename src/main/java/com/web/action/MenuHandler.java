package com.web.action;

import com.web.biz.MenuBiz;
import com.web.enity.TblUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/menu")
public class MenuHandler {
    private List<TblUser> userList;
    @Resource
    private MenuBiz menuBizImpl;

    @RequestMapping(value="/userList.action")
    public @ResponseBody
    Map<String , Object> userList(String beginDate , String endDate , String uid , int limit , int page)
    {
        System.out.println("菜单请求-用户列表");
        System.out.println("beginDate:"+beginDate + "endDate:"+endDate + "userid:"+uid);

        List<TblUser> userList = menuBizImpl.getUserList( beginDate ,  endDate ,  uid ,  limit ,  page);
        int count = menuBizImpl.getCount(beginDate ,  endDate ,  uid);

        Map<String , Object> map = new HashMap<>();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", count);
        map.put("data", userList);
        return map;
    }

    @RequestMapping("/delete")
    public @ResponseBody String deleteUser(String userid)
    {
        System.out.println("进入删除方法");
        System.out.println(userid);
        return "success";
    }
}
