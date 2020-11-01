package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;
import java.util.Date;

@Getter
@Setter
public class NewDTO implements Serializable {
    private String content;

    private Date createdDate;

    private Long id;

    private String image;

    private String thumbnails;

    private MultipartFile file;

    private String title;
}
