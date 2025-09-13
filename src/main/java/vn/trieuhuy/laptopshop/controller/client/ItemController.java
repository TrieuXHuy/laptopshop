package vn.trieuhuy.laptopshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import ch.qos.logback.core.model.Model;
import vn.trieuhuy.laptopshop.service.ProductService;

@Controller
public class ItemController {

    @GetMapping("/product/{id}")
    public String getMethodName(Model model, @PathVariable long id) {

        return "client/product/detail";
    }

}
