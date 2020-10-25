package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Table(name = "product_map_color")
@Entity
public class ProductMapColor implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, nullable = false)
    private Long id;

    @Column(name = "id_color")
    private Integer idColor;

    @Column(name = "id_product")
    private String idProduct;

    
}