package com.kl.jewelry.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;


@Entity
@Data
@Table(name = "new")
public class New implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column(name = "content")
    private String content;

    @Column(name = "created_date")
    private Date createdDate;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, nullable = false)
    private Long id;

    @Column(name = "image")
    private String image;

    @Column(name = "thumbnails")
    private String thumbnails;

    @Column(name = "title")
    private String title;

    
}