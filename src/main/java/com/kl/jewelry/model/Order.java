package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
@Table(name = "order")
public class Order implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column(name = "address")
    private String address;

    @Column(name = "hoten")
    private String hoten;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, nullable = false)
    private Long id;

    @Column(name = "phone")
    private String phone;

    
}