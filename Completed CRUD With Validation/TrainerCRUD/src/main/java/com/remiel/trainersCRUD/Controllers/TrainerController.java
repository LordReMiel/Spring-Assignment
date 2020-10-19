/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.remiel.trainersCRUD.Controllers;

import com.remiel.trainersCRUD.Models.Trainer;
import com.remiel.trainersCRUD.Service.TrainerServiceInterface;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ReMieL
 */

@Controller
public class TrainerController {
    
    @Autowired
    TrainerServiceInterface trainerServiceInterface;
    
    @GetMapping("/")
    public String showHome(ModelMap model){
        
        List<Trainer> list = trainerServiceInterface.getAllTrainers();
        
        model.addAttribute("listOfTrainers", list);
        
        return ("home");
    }
    
    
    @PostMapping("/preInsertTrainer")
    public String showTrainerForm(ModelMap model){
        
        model.addAttribute("newTrainer", new Trainer());
        
        return("addTrainer");
        
    }
    
     @PostMapping("/doInsertTrainer")
    public String insertTrainer(@Valid
                  @ModelAttribute("newTrainer") Trainer t,
                  BindingResult bindingResult){
        
        
        if(bindingResult.hasErrors()){
            
            
            return "addTrainer";
        }
        
       trainerServiceInterface.addTrainer(t);
        
        
        return "redirect:/";
    }
    
    @PostMapping("/deleteTrainer")
    public String deleteTrainer(
                                @RequestParam (name = "id") int id){
        
        trainerServiceInterface.deleteTrainer(id);
        
        return "redirect:/";
    }
    
    
     @GetMapping("/startPage")
    public String showHomePage(){
        
        
        
        return "redirect:/";
    }
    
    
    @PostMapping("/preUpdateTrainer")
    public String showUpdateFormTrainer(ModelMap model,
                                @RequestParam (name = "id") int id){
        
        Trainer t = trainerServiceInterface.updateTrainer(id);
        model.addAttribute("newTrainer", t);
     
        return "updateTrainer";
    }
    
    
     @PostMapping("/doUpdateTrainer")
    public String updateTrainer(@Valid
                  @ModelAttribute("newTrainer") Trainer t,
                  BindingResult bindingResult){
        
        
        if(bindingResult.hasErrors()){
            
            return "updateTrainer";
        }
        
       trainerServiceInterface.addTrainer(t);
        
        
        return "redirect:/";
    }
    
    
}
