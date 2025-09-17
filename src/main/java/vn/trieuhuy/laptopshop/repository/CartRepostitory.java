package vn.trieuhuy.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.trieuhuy.laptopshop.domain.Cart;
import vn.trieuhuy.laptopshop.domain.User;

@Repository
public interface CartRepostitory extends JpaRepository<Cart, Long> {
    Cart findByUser(User user);
}
