package com.zzp.service;

import org.springframework.stereotype.Service;
import com.zzp.pojo.UserInfo;
import com.zzp.dao.impl.MybatisUserAnnotaionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.Map;
/**
 * Created by zhuzhengping on 2017/5/13.
 */
@Service
public class MybatisService {

    @Autowired
    private MybatisUserAnnotaionMapper annotaionMapper;


    public void updateUser(String user_id, String nickName) {
        annotaionMapper.updateUser(user_id,nickName);
    }

    public UserInfo getUser(Integer id) {
        return annotaionMapper.getUser(id);
    }

    public void deleteUserByUserId(UserInfo userInfo) {
        annotaionMapper.deleteUserByUserId(userInfo);
    }

    public void createUser(Map<String, Object> reqMap) {
        System.out.println("reqMap:"+reqMap);
        annotaionMapper.createUser(reqMap);
    }
}
