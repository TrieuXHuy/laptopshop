package vn.trieuhuy.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.trieuhuy.laptopshop.domain.Role;
import vn.trieuhuy.laptopshop.domain.User;
import vn.trieuhuy.laptopshop.domain.dto.RegisterDTO;
import vn.trieuhuy.laptopshop.repository.RoleRepository;
import vn.trieuhuy.laptopshop.repository.UserRepository;

@Service
public class UserService {

    public final UserRepository userRepository;
    public final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public User handleSaveUser(User user) {
        this.userRepository.save(user);
        return user;
    }

    public User findUserById(long id) {
        return this.userRepository.findById(id);
    }

    public List<User> findAllUser() {
        return this.userRepository.findAll();
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public List<User> findAllByEmail(String email) {
        return this.userRepository.findAllByEmail(email);
    }

    public void deleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public User registerDTOtoUser(RegisterDTO resgisterDTO) {
        User user = new User();
        user.setFullName(resgisterDTO.getFirstName() + " " + resgisterDTO.getLastName());
        user.setEmail(resgisterDTO.getEmail());
        user.setPassword(resgisterDTO.getPassword());
        return user;
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }
}
