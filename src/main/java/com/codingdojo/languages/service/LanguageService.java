package com.codingdojo.languages.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.languages.models.Languages;
import com.codingdojo.languages.repository.LanguageRepository;
import com.codingdojo.languages.service.LanguageService;
@Service
public class LanguageService {

	@Autowired
	private LanguageRepository languageRepository;
    public List<Languages> all() {
        return languageRepository.findAll();
    }
    // creates a book
    public Languages create(Languages language) {
        return languageRepository.save(language);
    }
    // deletes a book
    public Languages delete(Long id) {
        languageRepository.deleteById(id);
		return null;
    }
    // retrieves a book
    public Languages find(Long id) {
        Optional<Languages> optionalLanguage = languageRepository.findById(id);
        if(optionalLanguage.isPresent()) {
            return optionalLanguage.get();
        } else {
            return null;
        }
    }

    }

