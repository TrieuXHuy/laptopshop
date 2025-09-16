package vn.trieuhuy.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.trieuhuy.laptopshop.domain.User;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findAllByEmail(String email);

    User findById(long id);

    User findByEmail(String email);

    void deleteById(long id);

    boolean existsByEmail(String email);

}
