//
//  customDifficultyViewController.swift
//  guessingGameIOS
//
//  Created by Cameron Hurt on 10/12/18.
//  Copyright © 2018 Cameron Hurt. All rights reserved.
//

import UIKit

class customDifficultyViewController: UIViewController {
    
    
    @IBOutlet weak var guessesTextfield: UITextField!
    
    @IBOutlet weak var minimumTextfield: UITextField!
    
    @IBOutlet weak var maximumTextField: UITextField!
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    
        
        guard let customViewController = segue.destination as?
        ViewController else { return }
        
        switch segue.identifier {
            
        case "playButton":
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
                guard segue.destination is
                    ViewController else { return }
            }
        
            
            
        default: break
        }
        customViewController.numberOfGuesses = Int(guessesTextfield.text!)!
        customViewController.minimumNumber = Int(minimumTextfield.text!)!
        customViewController.maximumNumber = Int(maximumTextField.text!)!
        customViewController.view.backgroundColor = .darkGray
    }
}
