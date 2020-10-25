package com.kl.jewelry.security;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

@Getter
@Setter
@ToString
public class UserDetails extends User {
    private com.kl.jewelry.model.User the;
    private Long id;
    public UserDetails(String maThe, String password, Collection<? extends GrantedAuthority> authorities) {
        super(maThe, password, authorities);
    }
}
