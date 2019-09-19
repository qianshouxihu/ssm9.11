package com.web.mapper;

import com.web.enity.TblAdmin;
import com.web.enity.TblUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository//持久化层注解
public interface TblUserMapper {
    public TblUser clientLogin(@Param("userid") String userid, @Param("upass") String upass);
    public TblAdmin backLogin(@Param("aid") String aid , @Param("apass") String apass);
    public TblUser checkUserid(@Param("userid") String userid);
    public Integer reg(TblUser user);
    //条件查询
    public List<TblUser> findAllUser(@Param("beginDate") String beginDate , @Param("endDate") String endDate , @Param("userid") String userid
    , @Param("limit") int limit , @Param("page") int page);
    //获取列表总条数
    public Integer findCount(@Param("beginDate") String beginDate , @Param("endDate") String endDate , @Param("userid") String userid);
}
