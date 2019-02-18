package br.com.hw.repository;

import org.springframework.data.repository.CrudRepository;

import br.com.hw.entity.User;

public interface UserRepository extends CrudRepository<User, Integer>{

}
