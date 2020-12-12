package com.codingdojo.languages.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.codingdojo.languages.models.Languages;

@Repository
public interface LanguageRepository extends CrudRepository<Languages, Long>{
    // this method retrieves all the books from the database
    List<Languages> findAll();
    // this method finds books with descriptions containing the search string
    List<Languages> findByCreatorContaining(String search);
    // this method counts how many titles contain a certain string
    Long countByNameContaining(String search);
    // this method deletes a book that starts with a specific title
    Long deleteByNameStartingWith(String search);
}
