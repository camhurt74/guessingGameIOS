//
//  ViewController.swift
//  guessingGameIOS
//
//  Created by Cameron Hurt on 10/9/18.
//  Copyright © 2018 Cameron Hurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var instructionLabel: UILabel!
    

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var RemainingLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func playAgainButtonTapped(_ sender: Any) {
        restart()
    }
    @IBAction func GuessButtonTapped(_ sender: Any) {
        let userInput = textField.text!
       
        guard let guess = Int(userInput) else {
            feedbackLabel.text = "you didn't enter a number"
            return
        }
         makeAGuess(guess)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.destination is
            selectDifficultyViewController else { return }
        
        guard let statsViewController = segue.destination as?
            ViewController else { return }
        
    
      
        }
    
    
    var gamesPlayed = 0
    var gamesWon = 0
    var minimumNumber = 1
    var maximumNumber = 100
    var numberOfGuesses = 6
    
    var gamesLost = 0
    var randomNumber = 0
    var guessesRemaining = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    restart()
        
    }
    
    
    func setupUIForRestart() {
        textField.isEnabled = false
        
        guessButton.isHidden = true
        
        playAgainButton.isHidden = false
        
        menuButton.isHidden = false
        
        RemainingLabel.isHidden = true
        
    
        
    }
    
    func makeAGuess(_ guess: Int) {
        
        guard guess >= minimumNumber && guess <= maximumNumber else {
            feedbackLabel.text = "your number wasn't between \(minimumNumber) and \(maximumNumber) "
            return
        }
       
        
        if guess == randomNumber {
            feedbackLabel.text = ("Correct! The number is \(randomNumber)")
            gamesPlayed += 1
            gamesWon += 1
            setupUIForRestart()
            
        } else {
        
      
        
        if guess < randomNumber {
            feedbackLabel.text = "Guess higher"
        }; if  guess > randomNumber { feedbackLabel.text = "Guess lower"
            
        }
       guard guessesRemaining > 0  else  {
            feedbackLabel.text = "You lose! The number was \(randomNumber)"
            setupUIForRestart()
        gamesLost += 1
        gamesPlayed += 1
        
            
        return
        }
        }
        
         RemainingLabel.text = " \(guessesRemaining) guesses remaining."
        
       guessesRemaining -= 1
    }
    func restart() {
        
        randomNumber =  Int.random(in: minimumNumber...maximumNumber)
        guessesRemaining = numberOfGuesses
        textField.text = ""
        textField.isEnabled = true
        playAgainButton.isHidden = true
        guessButton.isHidden = false
        feedbackLabel.text = ""
        RemainingLabel.text = "\(numberOfGuesses) guesses remaining"
        instructionLabel.text = "Please select a number between \(minimumNumber) and \(maximumNumber)"
        

        
    }
   
    
    
}

