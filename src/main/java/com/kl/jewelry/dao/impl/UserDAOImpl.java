package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.UserDAO;
import com.kl.jewelry.dto.UserDTO;
import com.kl.jewelry.dto.UserSearchDTO;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class UserDAOImpl extends AbstractDAO implements UserDAO {
    private final Logger log = LoggerFactory.getLogger(UserDAOImpl.class);


    @Override
    public void searchUser(UserSearchDTO userSearchDTO) {
        log.info("start DAO to searchUser with :{}", userSearchDTO);
        final StringBuilder sb = new StringBuilder();
        Map<String, Object> param = new HashMap<>();
        sb.append(" select distinct u.id as id,");
        sb.append(" u.first_name as firstName,");
        sb.append(" u.last_name as lastName,");
        sb.append(" u.username as username,");
        sb.append(" u.is_active as active,");
        sb.append(" u.user_role as userRole,");
        sb.append(" u.sex as sex,");
        sb.append(" u.phone as phone,");
        sb.append(" u.modified_date as modifiedDate,");
        sb.append(" u.created_date as createdDate,");
        sb.append(" u.address as address");
        sb.append(" from jewelry.user as u");
        sb.append(" where 1 = 1");
        if (StringUtils.isNotBlank(userSearchDTO.getUsername())) {
            sb.append(" and u.name like :p_userName");
            param.put("p_userName", "%" + userSearchDTO.getUsername().trim() + "%");
        }
        if (StringUtils.isNotBlank(userSearchDTO.getPhone())){
            sb.append(" and u.phone like :p_tt");
            param.put("p_tt","%" + userSearchDTO.getPhone().trim() + "%");
        }
        sb.append(" order by u.username");
        searchAndCountTotal(userSearchDTO, sb.toString(), param, UserDTO.class);
    }
}
