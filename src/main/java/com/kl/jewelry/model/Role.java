package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
@Table(name = "role")
public class Role implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column(name = "code")
    private Integer code;

    @Column(name = "code_group")
    private String codeGroup;

    @Column(name = "description")
    private String description;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, nullable = false)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "parent_code")
    private String parentCode;

    
}