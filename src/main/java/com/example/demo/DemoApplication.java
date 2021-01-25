package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.HashMap;
import java.util.Map;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.http.MediaType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}

@RestController
class PingController {

	private static final Logger log = LoggerFactory.getLogger(PingController.class);

    @GetMapping(path = "/api/ping", produces = MediaType.APPLICATION_JSON_VALUE)
    public Map<String, String> ping() {
		log.info("ping => pong");
        HashMap<String, String> map = new HashMap<>();
		map.put("message", "pong");
        return map;
	}
}
