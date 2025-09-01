package vn.trieuhuy.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.trieuhuy.laptopshop.domain.User;
import vn.trieuhuy.laptopshop.repository.UserRepository;

@Service
public class UserService {

    public final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "hello from service";
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
}
