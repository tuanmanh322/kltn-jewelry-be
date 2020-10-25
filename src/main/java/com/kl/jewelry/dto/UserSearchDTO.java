package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserSearchDTO extends BaseSearch {
    private Integer idThe;

    private String maThe;

    private String createDate;

    private Integer idRole;

    private String active;

    private String userName;

    private String emailUser;

    private String sex;

    private Float luongcoban;

    private boolean isTeacher;

    private Integer sodt;

    private String quequan;


}
