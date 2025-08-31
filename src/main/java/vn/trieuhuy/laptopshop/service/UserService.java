package vn.trieuhuy.laptopshop.service;

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
}
