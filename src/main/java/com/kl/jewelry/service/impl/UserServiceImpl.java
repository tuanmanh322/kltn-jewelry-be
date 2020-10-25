package com.kl.jewelry.service.impl;

import com.kl.jewelry.common.CommonResult;
import com.kl.jewelry.dao.UserDAO;
import com.kl.jewelry.dto.PasswordChange;
import com.kl.jewelry.dto.UserCheckinDTO;
import com.kl.jewelry.dto.UserDTO;
import com.kl.jewelry.dto.UserSearchDTO;
import com.kl.jewelry.exception.ResultException;
import com.kl.jewelry.model.Role;
import com.kl.jewelry.model.User;
import com.kl.jewelry.repository.RoleRepository;
import com.kl.jewelry.repository.UserRepository;
import com.kl.jewelry.security.SecurityUtils;
import com.kl.jewelry.service.FileStorageService;
import com.kl.jewelry.service.UserService;
import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    private final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private PasswordEncoder passwordEncoder;

    private final UserRepository usersRepository;

    private final RoleRepository rolesRepository;


    private final ModelMapper modelMapper;

    private final UserDAO userDAO;

    private final FileStorageService fileStorageService;


    public UserServiceImpl(UserRepository usersRepository, RoleRepository rolesRepository, ModelMapper modelMapper, UserDAO userDAO, FileStorageService fileStorageService) {
        this.usersRepository = usersRepository;
        this.rolesRepository = rolesRepository;
        this.modelMapper = modelMapper;
        this.userDAO = userDAO;
        this.fileStorageService = fileStorageService;
    }

    @Override
    public void userSearch(UserSearchDTO userSearchDTO) {
        log.info(" start service to userSearch with :{}", userSearchDTO);
        userDAO.searchUser(userSearchDTO);
    }

    @Override
    public UserDTO getCurrentUserLogin() {
        log.info("start service to getCurrentUserLogin");
        Long idThe = SecurityUtils.getCurrentUserIdLogin();
        User the = usersRepository.findById(idThe).get();
        UserDTO userDTO = modelMapper.map(the, UserDTO.class);
        return userDTO;
    }

    @Override
    public void addByAdmin(UserDTO dto) throws ResultException {
//        log.info(" start service to addByAdmin with :{}", dto);
//        The t = new The();
//        UserLopMapper userLopMapper = new UserLopMapper();
//        String maThe = "";
//        switch (dto.getIdRole()) {
//            case 1:
//                maThe = RandomString.rdMaThe(Constant.MA_THE_ADMIN);
//                break;
//            case 2:
//                maThe = RandomString.rdMaThe(Constant.MA_THE_TEACHER);
//                break;
//            case 3:
//                maThe = RandomString.rdMaThe(Constant.MA_THE_STUDENT);
//                break;
//        }
//        Optional<The> the = theRepository.findByMaThe(maThe);
//        if (the.isPresent()) {
//            throw new ResultException(ErrorCode.RECORD_EXISTED);
//        }
//        t.setMaThe(maThe);
//        t.setIdRole(dto.getIdRole());
//        t.setNgaycap(new Date());
//        t.setPassword(passwordEncoder.encode("123456"));
//        t.setTrangthai(Boolean.TRUE);
//        theRepository.save(t);
//        Users users = new Users();
//        users.setMaThe(t.getId());
//        users.setName(dto.getName());
//        users.setGioitinh(dto.getSex());
//        users.setQuequan(dto.getQuequan());
//        users.setSodt(dto.getSodt());
//        if (dto.getIdRole() == 2) {
//            users.setIsTeacher(true);
//            users.setLuongcoban(dto.getLuongcoban());
//            userLopMapper.setIdLop(dto.getIdLop());
//        }
//        usersRepository.save(users);
//        if (dto.getIdRole() == 2) {
//            userLopMapper.setIdUser(users.getId());
//            userLopMapperRepository.save(userLopMapper);
//        }
    }

    @Override
    public void editByAdmin(UserDTO dto) {
//        The the = theRepository.getOne(dto.getIdThe());
//        if (dto.getIdRole() != null) {
//            the.setIdRole(dto.getIdRole());
//            theRepository.save(the);
//        }
//        Users users = usersRepository.findByMaThe(the.getId());
//        users.setSodt(dto.getSodt());
//        users.setQuequan(dto.getQuequan());
//        if (dto.getIdRole() == 2) {
//            users.setLuongcoban(dto.getLuongcoban());
//        }
//        users.setName(dto.getName());
//        usersRepository.save(users);
//        if (dto.getIdLop() != null) {
//            UserLopMapper userLopMapper = userLopMapperRepository.findByUserAndLop(users.getId(), dto.getIdLopOld());
//            userLopMapper.setIdLop(dto.getIdLop());
//            userLopMapperRepository.save(userLopMapper);
//        }
    }

    @Override
    public CommonResult addUser(UserDTO dto) throws ResultException {
//        log.info("start service to addUser with: {}", dto);
//        The t = new The();
//        String maThe = RandomString.rdMaThe("1515");
//        Optional<The> the = theRepository.findByMaThe(maThe);
//        if (the.isPresent()) {
//            throw new ResultException(ErrorCode.RECORD_EXISTED);
//        }
//        t.setMaThe(maThe);
//        t.setIdRole(dto.getIdRole());
//        t.setNgaycap(new Date());
//        t.setPassword(passwordEncoder.encode(dto.getPassword()));
//        t.setTrangthai(Boolean.TRUE);
//        t.setMaLoaithe(dto.getMaLoaithe());
//        theRepository.save(t);
//        Users u = new Users();
//        Optional<Users> users = usersRepository.findByEmail(dto.getEmail());
//        if (users.isPresent()) {
//            throw new ResultException(ErrorCode.EMAIL_EXISTED);
//        }
//        u.setMaThe(t.getId());
//        u.setName(dto.getName());
//        u.setGioitinh(dto.getGioitinh());
//        u.setNgaysinh(dto.getNgaysinh());
//        u.setSocmt(dto.getSocmt());
//        u.setQuoctich(dto.getQuoctich());
//        u.setQuequan(dto.getQuequan());
//        u.setNoiohientai(dto.getNoiohientai());
//        u.setHokhau(dto.getHokhau());
//        u.setQuatrinhlamviec(dto.getQuatrinhlamviec());
//        u.setEmail(dto.getEmail());
//        u.setSodt(dto.getSodt());
//        u.setLuongcoban(dto.getLuongcoban());
//        u.setIsTeacher(dto.getIsTeacher());
//        if (!dto.getImageAvatar().isEmpty()) {
//            try {
//                u.setImagePath(FileUploadURL.saveFileAndGetUrl(dto.getImageAvatar()));
//            } catch (Exception e) {
//                e.printStackTrace();
//                throw new ResultException(ErrorCode.RECORD_NOT_FOUND);
//            }
//        }
//        usersRepository.save(u);
//        return CommonResult.success(maThe);
            return null;
    }

    @Override
    public boolean checkEmail(String email) {
//        log.info("start service to checkEmail with {}: ", email);
//        Optional<Users> users = usersRepository.findByEmail(email.trim());
//        return users.isPresent();
        return false;
    }

    @Override
    public CommonResult register(UserDTO dto) throws ResultException {
//        log.info("start service to register with: {}", dto);
//        The t = new The();
//        String maThe = "";
//        // ROLE_ANONYMOUS
////        if (dto.getIdRole() == 4){
//        maThe = RandomString.rdMaThe(Constant.MA_THE_CUSTOMER);
//        Optional<The> the = theRepository.findByMaThe(maThe);
//        if (the.isPresent()) {
//            switch ((int) (Math.random() * 4) + 1) {
//                case 1:
//                    maThe = RandomString.rdMaThe("1212");
//                    break;
//                case 2:
//                    maThe = RandomString.rdMaThe("1313");
//                    break;
//                case 3:
//                    maThe = RandomString.rdMaThe("1414");
//                    break;
//                case 4:
//                    maThe = RandomString.rdMaThe("1515");
//                    break;
//            }
//            t.setMaThe(maThe);
//        } else {
//            t.setMaThe(maThe);
//        }
//        }
//        if (dto.getIdRole() == 3){
//            maThe = RandomString.rdMaThe("1616");
//            Optional<The> the = theRepository.findByMaThe(maThe);
//            if (the.isPresent()){
//                switch ((int) (Math.random()* 4) + 1){
//                    case 1:
//                        maThe = RandomString.rdMaThe("1717");
//                        break;
//                    case 2:
//                        maThe = RandomString.rdMaThe("1818");
//                        break;
//                    case 3:
//                        maThe = RandomString.rdMaThe("1919");
//                        break;
//                    case 4:
//                        maThe = RandomString.rdMaThe("2020");
//                        break;
//                }
//                t.setMaThe(maThe);
//            }else {
//                t.setMaThe(maThe);
//            }
//        }
//        t.setIdRole(4);
//
//        t.setNgaycap(new Date());
//        t.setPassword(passwordEncoder.encode(dto.getPassword()));
//        t.setTrangthai(Boolean.TRUE);
//        theRepository.save(t);
//        Users u = new Users();
//        Optional<Users> users = usersRepository.findByEmail(dto.getEmail());
//        if (users.isPresent()) {
//            throw new ResultException(ErrorCode.EMAIL_EXISTED);
//        }
//        u.setEmail(dto.getEmail());
//        u.setName(dto.getName());
//        u.setMaThe(t.getId());
//        u.setIsTeacher(false);
//        usersRepository.save(u);
//        return CommonResult.success(maThe);
        return null;
    }

    @Override
    public CommonResult updateProfile(UserDTO dto) throws ResultException {
//        log.info("start service to updateProfile with :{}", dto);
//        Optional<The> the = theRepository.findById(SecurityUtils.getCurrentUserIdLogin());
//        if (the.isPresent()) {
//            Users users = usersRepository.findByMaThe(the.get().getId());
//            users.setName(dto.getName());
//            users.setLuongcoban(dto.getLuongcoban());
//            users.setEmail(dto.getEmail());
//            users.setQuatrinhlamviec(dto.getQuatrinhlamviec());
//            users.setHokhau(dto.getHokhau());
//            users.setNoiohientai(dto.getNoiohientai());
//            users.setQuequan(dto.getQuequan());
//            users.setQuoctich(dto.getQuoctich());
//            users.setSocmt(dto.getSocmt());
//            users.setNgaysinh(dto.getNgaysinh());
//            if (dto.getGioitinh().equals("Nam")){
//                users.setGioitinh("NAM");
//            }else{
//                users.setGioitinh(dto.getGioitinh());
//            }
//            if (dto.getGioitinh().equals("Nu")){
//                users.setGioitinh("NỮ");
//            }else{
//                users.setGioitinh(dto.getGioitinh());
//            }
//            users.setSodt(dto.getSodt());
//            Roles roles = rolesRepository.findById(the.get().getIdRole()).get();
//            if (roles.getNameRole().equals(UserTypeEnum.TEACHER.getName()) && roles.getId() == 2) {
//                Optional<Lop> lop = lopRepository.findById(users.getMaLop());
//                if (lop.isPresent()) {
//                    Lop lp = lop.get();
//                    lp.setTenlop(dto.getTenLop());
//                    lp.setKipDay(dto.getKipDay());
//                    lopRepository.save(lp);
//                    Optional<Monhoc> monhoc = monhocRepository.findById(lop.get().getMaMonhoc());
//                    monhoc.ifPresent(mh -> {
//                        mh.setTenmonhoc(dto.getTenMH());
//                    });
//                    monhocRepository.save(monhoc.get());
//                    Hangmuc hangmuc = hangMucRepository.findByMaMonhoc(monhoc.get().getId());
//                    hangmuc.setTenhangmuc(dto.getTenHangMuc());
//                    hangMucRepository.save(hangmuc);
//                }
//            }
//            if (dto.getImageAvatar() != null) {
//                try {
//                    users.setImagePath(fileStorageService.storeFile(dto.getImageAvatar()));
//                } catch (Exception e) {
//                    e.printStackTrace();
//                    throw new ResultException(ErrorCode.FILE_UPLOAD_FAILED);
//                }
//            }
//            usersRepository.save(users);
//            UserDTO userDTO = new UserDTO();
//            userDTO.setIdRole(the.get().getIdRole());
//            userDTO.setEmail(users.getEmail());
//            userDTO.setGioitinh(users.getGioitinh());
//            userDTO.setId(users.getId());
//            userDTO.setHokhau(users.getHokhau());
//            userDTO.setImagePath(users.getImagePath());
//            userDTO.setIdThe(the.get().getId());
//            userDTO.setLuongcoban(users.getLuongcoban());
//            userDTO.setName(users.getName());
//            userDTO.setNgaycap(the.get().getNgaycap());
//            userDTO.setNgaysinh(users.getNgaysinh());
//            userDTO.setNoiohientai(users.getNoiohientai());
//            userDTO.setPassword(the.get().getPassword());
//            userDTO.setQuatrinhlamviec(users.getQuatrinhlamviec());
//            userDTO.setQuequan(users.getQuequan());
//            userDTO.setSodt(users.getSodt());
//            userDTO.setSex(users.getGioitinh());
//            userDTO.setSocmt(users.getSocmt());
//            userDTO.setHokhau(users.getHokhau());
//            userDTO.setQuoctich(users.getQuoctich());
//            userDTO.setIsTeacher(users.getIsTeacher());
//            userDTO.setTrangthai(the.get().getTrangthai());
//            userDTO.setMaThe(the.get().getMaThe());
//            userDTO.setIdUser(users.getId());
//            List<Baiviet> totalBv = baivietRepository.getListBVByIdUser(users.getMaThe());
//            userDTO.setTotalBV(totalBv.size());
//            userDTO.setTenLop(dto.getTenLop());
//            userDTO.setTenMH(dto.getTenMH());
//            userDTO.setTenHangMuc(dto.getTenHangMuc());
//            userDTO.setKipDay(dto.getKipDay());
//            userDTO.setMaGV(users.getIdUser());
//            return CommonResult.success(userDTO);
//        }
        return null;
    }

    @Override
    public UserDTO getUserProfileEmp(Integer idUser) {
//        log.info("start service to get getUserProfileEmp with {}", idUser);
//        List<Baiviet> totalBv = baivietRepository.getListBVByIdUser(idUser);
//        Users users = usersRepository.findByMaThe(idUser);
//        if (users != null) {
//            UserDTO userDTO = modelMapper.map(users, UserDTO.class);
//            userDTO.setIdThe(users.getMaThe());
//            Optional<The> the = theRepository.findById(users.getMaThe());
//
//            if (the.isPresent()) {
//                Roles role = rolesRepository.findById(the.get().getIdRole()).get();
//                userDTO.setRole(role.getNameRole());
//                userDTO.setIdRole(the.get().getIdRole());
//            }
//            userDTO.setTotalBV(totalBv.size());
//            return userDTO;
//        }
        return null;
    }

    @Override
    public String getUserNameLogin() {
//        log.info("start service to get userLogin");
//        The the = theRepository.getOne(SecurityUtils.getCurrentUserIdLogin());
//        Users users = usersRepository.findByMaThe(the.getId());
        return null;
    }

    @Override
    public List<User> getALl() {
        return usersRepository.findAll();
    }

    @Override
    public void changePassword(PasswordChange passwordChange) throws ResultException {
//        log.info("start service to changePassword with {} ", passwordChange);
//        The the = theRepository.getOne(SecurityUtils.getCurrentUserIdLogin());
//        if (!passwordEncoder.matches(passwordChange.getOldPassword(), the.getPassword())) {
//            throw new ResultException(ErrorCode.PASSWORD_MATCH);
//        }
//        the.setPassword(passwordEncoder.encode(passwordChange.getNewPassword()));
//        theRepository.save(the);
    }

    @Override
    public void forgotPassword(String email) throws ResultException {
//        log.info("start service to forgotPassword with email :{} ", email);
//        String newPassword = RandomString.rdPW();
//        Optional<Users> users = usersRepository.findByEmail(email.trim());
//        if (!users.isPresent()) {
//            throw new ResultException(ErrorCode.EMAIL_EXISTED);
//        }
//        The the = theRepository.getOne(users.get().getMaThe());
//        the.setPassword(passwordEncoder.encode(newPassword));
//        theRepository.save(the);
    }

    @Override
    public void doLock(Integer idThe) {
//        log.info("start service to doLock with idThe :{} ", idThe);
//        The the = theRepository.getOne(idThe);
//        the.setTrangthai(false);
//        theRepository.save(the);
    }

    @Override
    public void doUnLock(Integer idThe) {
//        log.info("start service to doUnLock with idThe :{} ", idThe);
//        The the = theRepository.getOne(idThe);
//        the.setTrangthai(true);
//        theRepository.save(the);

    }

    @Override
    public CommonResult checkInUser(UserCheckinDTO dto) {
//        log.info("start service to checkInUser with dto :{} ", dto);
//        Optional<The> the = theRepository.findByMaThe(dto.getMaThe());
//        if (!the.isPresent()) {
//            return CommonResult.failed("Không tìm thấy thông tin user");
//        }
//        The t = the.get();
//        UserCheckinDTO userCheckinDTO = new UserCheckinDTO();
//        userCheckinDTO.setIdThe(t.getId());
//        userCheckinDTO.setMaThe(t.getMaThe());
//        Users users = usersRepository.findByMaThe(t.getId());
//        userCheckinDTO.setUserName(users.getName());
//        userCheckinDTO.setImagePath(users.getImagePath());
//        List<Lop> lopList = new ArrayList<>();
//        List<UserLopMapper> userLopMappers = userLopMapperRepository.findByIdUser(users.getId());
//        if (!userLopMappers.isEmpty()) {
//            userLopMappers.stream().map(ulm -> {
//                Lop lop = lopRepository.findById(ulm.getIdLop()).get();
//                lopList.add(lop);
//                return ulm;
//            }).collect(Collectors.toList());
//            userCheckinDTO.setLopList(lopList);
//        }
//        Optional<Nhatcheckin> ncc = nhatcheckinRepository.findByMaTheWithDateAndIdLop(t.getId(),dto.getIdLop());
//        if (ncc.isPresent()){
////            List<Nhatcheckin> nccList  =nhatcheckinRepository.findByMaThe(t.getId());
////            if (!nccList.isEmpty()){
////                userCheckinDTO.setNhatcheckins(nccList);
////                return CommonResult.success(userCheckinDTO);
////            }
//            return CommonResult.failed("Ngày hôm nay bạn đã checkin vào hệ thống rồi");
//        }
//        Nhatcheckin nhatcheckin = new Nhatcheckin();
//        nhatcheckin.setMaThe(t.getId());
//        nhatcheckin.setStatus(Constant.CHECKIN);
//        nhatcheckin.setThoigianvao(LocalDateTime.now());
//        nhatcheckin.setIdLop(dto.getIdLop());
//        nhatcheckinRepository.save(nhatcheckin);
//        List<Nhatcheckin> nccList  =nhatcheckinRepository.findByMaThe(t.getId());
//        if (!nccList.isEmpty()){
//            userCheckinDTO.setNhatcheckins(nccList);
//        }
//        return CommonResult.success(userCheckinDTO);
        return null;
    }

    @Override
    public UserDTO loadUserEdit(int idThe) {
//        UserDTO dto = new UserDTO();
//        The the = theRepository.findById(idThe).get();
//        Users users = usersRepository.findByMaThe(the.getId());


        return null;
    }

    @Override
    public void addNewUser(UserDTO userDTO) {
        User user = modelMapper.map(userDTO,User.class);
        user.setPassword(passwordEncoder.encode(userDTO.getPassword()));
        user.setCreatedDate(new Date());
        user.setActive(Boolean.TRUE);
        user.setUserRole(2);
        usersRepository.save(user);
    }

    @Override
    public UserDTO getProfile() {
        Long id = SecurityUtils.getCurrentUserIdLogin();
        Optional<User> user = usersRepository.findById(id);
        if (user.isPresent()){
            UserDTO dto  = modelMapper.map(user.get(),UserDTO.class);
            Role  role =  rolesRepository.findById(dto.getUserRole()).get();
            dto.setUserRoleName(role.getName());
            return dto;
        }
        return null;
    }
}
