package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "sale")
public class Sale implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column(name = "code")
    private Double code;

    @Column(name = "description")
    private String description;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, nullable = false)
    private Long id;

    @Column(name = "name")
    private String name;

    
}