package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.web.client.RestTemplate;

import static org.junit.jupiter.api.Assertions.*;


public class TestContainersTest {

    @Test
    public void pocTestContainers() {
        String response = new RestTemplate(  )
                .getForEntity( "http://localhost:8080/hello", String.class )
                .getBody();
        assertEquals("Hello", response );
    }
}
