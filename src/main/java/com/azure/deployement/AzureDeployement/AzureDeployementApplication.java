package com.azure.deployement.AzureDeployement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class AzureDeployementApplication {

	@GetMapping("/hello")
	public String displayMessage(){
		return "Container deployed to Azure Successfully Now";
	}

	public static void main(String[] args) {
		SpringApplication.run(AzureDeployementApplication.class, args);
	}

}
