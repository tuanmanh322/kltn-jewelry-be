package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
@Table(name = "cart")
public class Cart implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, nullable = false)
    private Long id;

    @Column(name = "id_user")
    private Long idUser;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "id_product")
    private Long idProduct;

    @Column(name = "create_date")
    private Date createDate;
}