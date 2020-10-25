package com.kl.jewelry.controller;

import com.kl.jewelry.dto.UserDTO;
import com.kl.jewelry.repository.UserRepository;
import com.kl.jewelry.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/user")
public class UserController {
    private final Logger log = LoggerFactory.getLogger(UserController.class);

    private final UserService userService;

    private final UserRepository userRepository;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @PostMapping("/register")
    public ResponseEntity<Void> add(@RequestBody UserDTO userDTO) {
        userService.addNewUser(userDTO);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> delete(@PathVariable("id") Long id) {
        userRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/profile-user")
    public ResponseEntity<UserDTO> getProfile() {
        return new ResponseEntity<>(userService.getProfile(), HttpStatus.OK);
    }


//    @GetMapping("/profile-detail")
//    public ResponseEntity<UserDTO> getProfileDetail() {
//        log.info("start rest to getProfileDetail");
//        return new ResponseEntity<>(userService.getCurrentUserLogin(), HttpStatus.OK);
//    }
//
//    @GetMapping("/check-email")
//    public ResponseEntity<Boolean> checkMail(@RequestParam("email") String email) {
//        log.info("start rest to checkMail with {} : ", email);
//        return new ResponseEntity<>(userService.checkEmail(email.trim()), HttpStatus.OK);
//    }
//
//    @PostMapping("/register")
//    public ResponseEntity<CommonResult> register(@RequestBody UserDTO dto) throws ResultException {
//        log.info("start rest to register with {} : ", dto);
//        return new ResponseEntity<>(userService.register(dto), HttpStatus.OK);
//    }
//
//    @PostMapping("/edit-profile")
//    public ResponseEntity<CommonResult> edit(@ModelAttribute UserDTO dto) throws ResultException {
//        log.info("start rest to edit with {} : ", dto);
//        return new ResponseEntity<>(userService.updateProfile(dto), HttpStatus.OK);
//    }
//
//    @GetMapping("/profile-emp/{idUser}")
//    public ResponseEntity<UserDTO> getProfileEMP(@PathVariable("idUser") Integer idUser) {
//        log.info("start rest to get getProfileEMP with: {}", idUser);
//        return new ResponseEntity<>(userService.getUserProfileEmp(idUser), HttpStatus.OK);
//    }
//
//    @GetMapping("/all")
//    public ResponseEntity<List<User>> getAll() {
//        log.info("start rest to get getAll ");
//        return new ResponseEntity<>(userService.getALl(), HttpStatus.OK);
//    }
//
//    @PostMapping("/change-password")
//    public ResponseEntity<Void> changePassword(@RequestBody PasswordChange passwordChange) throws ResultException {
//        log.info("Start rest to changePassword with :{}", passwordChange);
//        userService.changePassword(passwordChange);
//        return ResponseEntity.ok().build();
//    }
//
//    @GetMapping("/forgot-password")
//    public ResponseEntity<Void> forgotPassword(@RequestParam("email") String email) throws ResultException {
//        log.info("Start rest to forgotPassword with email:{}", email);
//        userService.forgotPassword(email);
//        return ResponseEntity.ok().build();
//    }
//
//    @PostMapping("/search-user")
//    public ResponseEntity<UserSearchDTO> userSearchDTOResponseEntity(@RequestBody UserSearchDTO dto) {
//        log.info("Start rest to userSearchDTOResponseEntity :{}", dto);
//        userService.userSearch(dto);
//        return new ResponseEntity<>(dto, HttpStatus.OK);
//    }
//
//    @PostMapping("/add-admin")
//    public ResponseEntity<Void> addAdmin(@RequestBody UserDTO dto) throws ResultException {
//        log.info("Start rest to addAdmin :{}", dto);
//        userService.addByAdmin(dto);
//        return ResponseEntity.ok().build();
//    }
//
//    @PutMapping("/edit-admin")
//    public ResponseEntity<Void> editByaDMIN(@RequestBody UserDTO dto) throws ResultException {
//        log.info("Start rest to editByaDMIN :{}", dto);
//        userService.editByAdmin(dto);
//        return ResponseEntity.ok().build();
//    }
//
//    @GetMapping("/lock-user/{idThe}")
//    public ResponseEntity<Void> doLock(@PathVariable("idThe") Integer idThe) {
//        log.info("Start rest to doLock :{}", idThe);
//        userService.doLock(idThe);
//        return ResponseEntity.ok().build();
//    }
//
//    @GetMapping("/unlock-user/{idThe}")
//    public ResponseEntity<Void> doUnLock(@PathVariable("idThe") Integer idThe) {
//        log.info("Start rest to doUnLock :{}", idThe);
//        userService.doUnLock(idThe);
//        return ResponseEntity.ok().build();
//    }
//
//    @PostMapping("/users-checkin")
//    public ResponseEntity<CommonResult> checkinUser(@RequestBody UserCheckinDTO dto) {
//        log.info(" start rest to checinUser with :{}", dto);
//        return new ResponseEntity<>(userService.checkInUser(dto), HttpStatus.OK);
//    }
//
//    @GetMapping("/load-user-by-edit/{idThe}")
//    public ResponseEntity<UserDTO> loadUserByEdit(@PathVariable("idThe") int idThe){
//        return new ResponseEntity<>(userService.loadUserEdit(idThe), HttpStatus.OK);
//    }
}
