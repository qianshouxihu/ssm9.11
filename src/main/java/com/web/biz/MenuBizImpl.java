package com.web.biz;

import com.web.enity.TblUser;
import com.web.mapper.TblUserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class MenuBizImpl implements MenuBiz {

    @Resource
    private TblUserMapper tblUserMapper;


    @Override
    public List<TblUser> getUserList(String beginDate, String endDate, String userid, int limit, int page) {
        page = (page - 1)*limit;
        List<TblUser> list = tblUserMapper.findAllUser(beginDate,  endDate,  userid,  limit,  page);
        return list;
    }

    @Override
    public Integer getCount(String beginDate, String endDate, String userid) {
        int count = tblUserMapper.findCount(beginDate,  endDate,  userid);
        return count;
    }
}
