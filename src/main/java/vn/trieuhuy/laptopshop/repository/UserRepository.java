package vn.trieuhuy.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.trieuhuy.laptopshop.domain.User;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // User save(User eric);
    List<User> findAllByEmail(String email);

    User findById(long id);

    void deleteById(long id);
}
