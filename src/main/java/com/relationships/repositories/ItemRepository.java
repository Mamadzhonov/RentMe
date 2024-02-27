package com.relationships.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.relationships.models.Items;

@Repository
public interface ItemRepository extends CrudRepository<Items, Long> {
    public List<Items> findAll();

    public Optional<Items> findById(Long id);

}
