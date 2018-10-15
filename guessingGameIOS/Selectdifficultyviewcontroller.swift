//
//  Selectdificultyviewcontroller.swift
//  guessingGameIOS
//
//  Created by Cameron Hurt on 10/10/18.
//  Copyright © 2018 Cameron Hurt. All rights reserved.
//

import UIKit

class selectDifficultyViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let guessingGameViewController = segue.destination as?
            ViewController else { return }
        
        switch segue.identifier {
        case "EasyToGuessingGame" :
            guessingGameViewController.minimumNumber = 1
            guessingGameViewController.maximumNumber = 10
            guessingGameViewController.numberOfGuesses = 3
         guessingGameViewController.view.backgroundColor = .green
        case "MediumToGuessingGame":
            guessingGameViewController.minimumNumber = 1
            guessingGameViewController.maximumNumber = 100
            guessingGameViewController.numberOfGuesses = 5
           guessingGameViewController.view.backgroundColor = .orange
        case "HardToGuessingGame":
            guessingGameViewController.minimumNumber = 1
            guessingGameViewController.maximumNumber = 1000
            guessingGameViewController.numberOfGuesses = 10
           guessingGameViewController.view.backgroundColor = .red
        case "customScreen":
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
                guard segue.destination is
                    customDifficultyViewController else { return }
            }
            
        default:
            break
            
        }

    }
}
