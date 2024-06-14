package com.example.demo.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
public class GreetingServiceTest {

    @Autowired
    private GreetingService greetingService;

    @Test
    public void testGetGreeting() {
        String name = "World";
        String expected = "Hello, World!";
        String actual = greetingService.getGreeting(name);
        assertEquals(expected, actual, "Greeting message should be 'Hello, World!'");
    }
}
