package vn.trieuhuy.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.trieuhuy.laptopshop.domain.Cart;
import vn.trieuhuy.laptopshop.domain.CartDetail;
import vn.trieuhuy.laptopshop.domain.Product;
import vn.trieuhuy.laptopshop.domain.User;
import vn.trieuhuy.laptopshop.repository.CartDetailRepository;
import vn.trieuhuy.laptopshop.repository.CartRepostitory;
import vn.trieuhuy.laptopshop.repository.ProductRepository;

@Service
public class ProductService {

    private final ProductRepository productRepository;
    private final CartDetailRepository cartDetailRepository;
    private final CartRepostitory cartRepostitory;
    private final UserService userService;

    public ProductService(ProductRepository productRepository,
            CartDetailRepository cartDetailRepository,
            CartRepostitory cartRepostitory,
            UserService userService) {
        this.productRepository = productRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.cartRepostitory = cartRepostitory;
        this.userService = userService;
    }

    public Product handleSaveProduct(Product product) {
        this.productRepository.save(product);
        return product;
    }

    public List<Product> fetchProduct() {
        return this.productRepository.findAll();
    }

    public void createProduct(Product newProduct) {
        this.productRepository.save(newProduct);
    }

    public Product findById(long id) {
        return this.productRepository.findById(id);
    }

    public void deleteProduct(long id) {
        this.productRepository.deleteById(id);
    }

    public void handleAddProductToCart(long productId, String email) {

        User user = this.userService.getUserByEmail(email);

        if (user != null) {
            // check user đã có cart chưa? nếu chưa -> khởi tạo
            Cart cart = this.cartRepostitory.findByUser(user);

            if (cart == null) {
                // create cart
                Cart createCart = new Cart();
                createCart.setUser(user);
                createCart.setSum(0);
                cart = this.cartRepostitory.save(createCart);
            }
            // lưu card_detail
            Product product = this.productRepository.findById(productId);
            if (product != null) {
                CartDetail cartDetail = new CartDetail();
                cartDetail.setCart(cart);
                cartDetail.setProduct(product);
                cartDetail.setPrice(product.getPrice());
                cartDetail.setQuantity(1);
                this.cartDetailRepository.save(cartDetail);
            }

        }
    }
}
