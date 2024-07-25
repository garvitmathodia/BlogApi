package com.blog.repositories;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.blog.entities.People;


public interface UserRepo extends JpaRepository<People, Integer>{
		
	
	Optional<People> findByEmail(String email);
}
