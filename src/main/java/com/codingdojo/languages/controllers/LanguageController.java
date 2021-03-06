package com.codingdojo.languages.controllers;

import java.util.List;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.codingdojo.languages.models.Languages;
import com.codingdojo.languages.service.LanguageService;


@Controller
public class LanguageController {
	@Autowired
	private LanguageService languageService;
	
    @RequestMapping("/languages")
    public String home(Model model) {
    	List<Languages> lang = languageService.all();
        model.addAttribute("languages", lang);
        return "index.jsp";
    }
    @RequestMapping("/languages/{id}")
    public String show(@PathVariable("id") Long id, Model model) {
    	Languages language = languageService.find(id);
        model.addAttribute("language", language);
        return "view.jsp";
    }
    @RequestMapping(value="/languages/create", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("language") Languages language, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "new.jsp";
        } else {
            languageService.create(language);
            return "redirect:/languages";
        }
    }
    @RequestMapping("/languages/{id}/edit")
    public String edit(@PathVariable("id") Long id, Model model) {
        Languages language = languageService.find(id);
        languageService.create(language);
        model.addAttribute("language", language);
        return "edit.jsp";
    }
    @GetMapping("/delete/{id}")
    public String destroy(@PathVariable("id") Long id) {
    	languageService.delete(id);
    	return "redirect:/languages";
    }
    @PostMapping("languages/{id}/update")
    public String update(@PathVariable("id") Long id, @Valid @ModelAttribute("language") Languages language, BindingResult result) {
        if (result.hasErrors()) {
        	language.setId(id);
            return "edit.jsp";
        } else {
        	language.setId(id);
        	languageService.create(language);
            return "redirect:/languages";
        }
    }
   
}
