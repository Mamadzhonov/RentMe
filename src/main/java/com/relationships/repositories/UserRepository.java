package com.relationships.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.relationships.models.User;

public interface UserRepository extends CrudRepository<User, Long> {
    List<User> findAllByEmail(String email);
    List<User> findAll();

    Optional<User> findByEmail(String email);
}
