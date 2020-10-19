/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.remiel.trainersCRUD.Service;

import com.remiel.trainersCRUD.Models.Trainer;
import java.util.List;

/**
 *
 * @author ReMieL
 */
public interface TrainerServiceInterface {
    
    
    public void addTrainer(Trainer t);
    
    public List <Trainer> getAllTrainers();
    
    public void deleteTrainer(int id);
    
    public Trainer updateTrainer(int id);
    
}
