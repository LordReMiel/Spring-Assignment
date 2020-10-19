/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.remiel.trainersCRUD.Service;

import com.remiel.trainersCRUD.Models.Trainer;
import com.remiel.trainersCRUD.Repository.TrainerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ReMieL
 */
@Service
public class TrainerService implements TrainerServiceInterface{
    
    
    @Autowired
    TrainerRepository trainerRepository;
    
    @Override
    public void addTrainer(Trainer t) {
        
        trainerRepository.save(t);
    }

    @Override
    public List<Trainer> getAllTrainers() {
       return trainerRepository.findAll();
    }

    @Override
    public void deleteTrainer(int id) {
        trainerRepository.deleteById(id);
    }

    @Override
    public Trainer updateTrainer(int id) {
         
       
        return trainerRepository.getOne(id);
        
    }
    
    
    
}
