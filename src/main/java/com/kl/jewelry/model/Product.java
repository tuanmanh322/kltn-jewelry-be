package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "product")
public class Product implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column(name = "created_date")
    private Date createdDate;

    @Column(name = "description")
    private String description;

    @Id
    @Column(name = "id", insertable = false, nullable = false)
    private Long id;

    @Column(name = "id_category")
    private Long idCategory;

    @Column(name = "id_color")
    private Long idColor;

    @Column(name = "id_mark")
    private Long idMark;

    @Column(name = "id_sale")
    private Long idSale;

    @Column(name = "image_product")
    private String imageProduct;

    @Column(name = "ma_sp")
    private String maSp;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private Double price;

    @Column(name = "sell_count")
    private Integer sellCount;

    @Column(name = "total_item")
    private Integer totalItem;

    
}