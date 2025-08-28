package vn.trieuhuy.laptopshop;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String index() {
        return "Hello World";
    }

    @GetMapping("/user")
    public String user() {
        return "Only user access this page";
    }

    @GetMapping("/admin")
    public String admin() {
        return "Only admin access this page";
    }
}
