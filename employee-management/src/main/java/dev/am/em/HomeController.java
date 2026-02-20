package dev.am.em;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
class HomeController {

    @GetMapping("/")
    String home() {
        return "Welcome to Employee Management System";
    }
}
