package com.relationships.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.relationships.models.Items;
import com.relationships.repositories.ItemRepository;

@Service
public class ItemService {

    @Autowired
    private ItemRepository itemRepo;

    public List<Items> getAllItems() {
        return itemRepo.findAll();
    }

    public void deleteById(long id) {
        itemRepo.deleteById(id);
    }

    public void saveItem(Items item) {
        if (item != null)
            itemRepo.save(item);
    }

    public Items findById(Long id) {
        Optional<Items> optUser = itemRepo.findById(id);
        if (optUser.isPresent()) {
            return optUser.get();
        }
        return null;
    }
}
