package com.kl.jewelry.dao;

import com.kl.jewelry.dto.UserSearchDTO;

import java.io.Serializable;

public interface UserDAO extends Serializable,BaseDAO {

    void searchUser(UserSearchDTO userSearchDTO);

}
