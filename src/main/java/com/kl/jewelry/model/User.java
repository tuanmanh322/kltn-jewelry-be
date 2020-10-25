package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Table(name = "user")
@Data
@Entity
public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column(name = "address")
    private String address;

    @Column(name = "created_date")
    private Date createdDate;

    @Column(name = "first_name")
    private String firstName;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, nullable = false)
    private Long id;

    @Column(name = "is_active")
    private Boolean active;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "modified_date")
    private Date modifiedDate;

    @Column(name = "password")
    private String password;

    @Column(name = "phone")
    private String phone;

    @Column(name = "sex")
    private Integer sex;

    @Column(name = "user_image")
    private String userImage;

    @Column(name = "user_role")
    private Integer userRole;

    @Column(name = "username")
    private String username;

    
}