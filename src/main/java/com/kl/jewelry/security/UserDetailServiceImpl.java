package com.kl.jewelry.security;

import com.kl.jewelry.common.Constant;
import com.kl.jewelry.model.Role;
import com.kl.jewelry.model.User;
import com.kl.jewelry.repository.RoleRepository;
import com.kl.jewelry.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Component("userDetailServiceImpl")
public class UserDetailServiceImpl implements UserDetailsService {
    private final Logger log = LoggerFactory.getLogger(UserDetailServiceImpl.class);

    private final UserRepository userRepository;

    private final RoleRepository rolesRepository;

    public UserDetailServiceImpl(UserRepository userRepository, RoleRepository rolesRepository) {
        this.userRepository = userRepository;
        this.rolesRepository = rolesRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String maThe) throws UsernameNotFoundException {
        log.trace("Service authenticate: {}", maThe);
        try {
            User the = userRepository.findByUsername(maThe);
            if (!the.getActive())
                throw new UserNotActivatedException("User: " + maThe + " was not activated");
//            if (the.getTrangthai())
//                throw new UserLockedException("User " + maThe + " was locked");
            Role role = rolesRepository.findByCodeAndCodeGroup(the.getUserRole(), Constant.GROUP_ROLE);
            List<GrantedAuthority> grantedAuthorities = Stream.of(role.getName())
                    .map(SimpleGrantedAuthority::new)
                    .collect(Collectors.toList());
            UserDetails userDetails = new UserDetails(the.getUsername(), the.getPassword(), grantedAuthorities);
            the.setPassword(null);
            userDetails.setThe(the);
            return userDetails;
        } catch (EmptyResultDataAccessException emptyResultDataAccessException) {
            throw new UsernameNotFoundException("User with maThe " + maThe + " not found in the database");
        }
    }
}
