package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.logging.Logger;

@RestController
public class HelloController {
    Logger logger = Logger.getLogger(HelloController.class.getName());

    @GetMapping("/hello")
    public String hello() {
        logger.info("hello logger");
        return "hello world!";
    }

    @GetMapping("/test")
    public String test() {
        logger.info("test logger");
        return "test!";
    }
}
