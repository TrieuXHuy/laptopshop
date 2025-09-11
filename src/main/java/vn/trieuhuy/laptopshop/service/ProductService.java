package vn.trieuhuy.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.trieuhuy.laptopshop.domain.Product;
import vn.trieuhuy.laptopshop.repository.ProductRepository;

@Service
public class ProductService {

    final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
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
}
