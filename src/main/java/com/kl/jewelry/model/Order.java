package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Data
@Table(name = "order_product")
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

    @Column(name = "transfer_done")
    private Boolean transferStatus;

    @Column(name = "create_date")
    private LocalDateTime createDate;

    @Column(name = "id_user")
    private Long idUser;

    @Column(name = "total_money")
    private Double totalMoney;
}