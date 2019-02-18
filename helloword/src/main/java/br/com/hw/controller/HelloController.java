package br.com.hw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.hw.entity.User;
import br.com.hw.repository.UserRepository;

@RestController
public class HelloController {

	@Autowired 
	private UserRepository userRepository;

	@GetMapping(path = "/add") 
	public @ResponseBody String addNewUser(@RequestParam String nome, @RequestParam String email) {

		User n = new User();
		n.setNome(nome);
		n.setEmail(email);
		userRepository.save(n);
		return "Saved";
	}

	@GetMapping(path = "/all")
	public @ResponseBody Iterable<User> getAllUsers() {
		return userRepository.findAll();
	}
}
