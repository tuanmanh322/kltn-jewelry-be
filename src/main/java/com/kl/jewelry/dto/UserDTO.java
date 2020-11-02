package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class UserDTO {
    private Long id;

    private String firstName;

    private String lastName;

    private String username;

    private String password;

    private String userImage;

    private Boolean active;

    private Integer userRole;

    private Date createdDate;

    private Date modifiedDate;

    private String address;

    private String phone;

    private int sex;

    private String userRoleName;
}
