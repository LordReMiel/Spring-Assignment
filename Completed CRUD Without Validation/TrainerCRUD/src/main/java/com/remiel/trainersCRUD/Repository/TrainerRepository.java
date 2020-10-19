/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.remiel.trainersCRUD.Repository;

import com.remiel.trainersCRUD.Models.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ReMieL
 */
@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer>{
    
}
