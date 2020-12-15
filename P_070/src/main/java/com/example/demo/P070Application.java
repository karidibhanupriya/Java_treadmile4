package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.cts")
public class P070Application {

	public static void main(String[] args) {
		SpringApplication.run(P070Application.class, args);
	}

}
