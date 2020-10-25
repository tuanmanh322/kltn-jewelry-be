package com.kl.jewelry.service;

import com.kl.jewelry.common.CommonResult;
import com.kl.jewelry.dto.PasswordChange;
import com.kl.jewelry.dto.UserCheckinDTO;
import com.kl.jewelry.dto.UserDTO;
import com.kl.jewelry.dto.UserSearchDTO;
import com.kl.jewelry.exception.ResultException;
import com.kl.jewelry.model.User;

import java.util.List;

public interface UserService {
    void userSearch(UserSearchDTO userSearchDTO);

    UserDTO getCurrentUserLogin();

    void addByAdmin(UserDTO dto) throws ResultException;

    void editByAdmin(UserDTO dto);

    CommonResult addUser(UserDTO dto) throws ResultException;

    boolean checkEmail(String email);

    CommonResult register(UserDTO dto) throws ResultException;

    CommonResult updateProfile(UserDTO dto) throws ResultException;

    UserDTO getUserProfileEmp(Integer idUser);

    String getUserNameLogin();

    List<User> getALl();

    void changePassword(PasswordChange passwordChange)throws ResultException;

    void forgotPassword(String email)throws ResultException;

    void doLock(Integer idThe);
    void doUnLock(Integer idThe);

    CommonResult checkInUser(UserCheckinDTO userCheckinDTO);

    UserDTO loadUserEdit(int idThe);

    void addNewUser(UserDTO userDTO);

    UserDTO getProfile();
}
