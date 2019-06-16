//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Oliver Cripps on 10/06/2019.
//  Copyright © 2019 Oliver Cripps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        gameScore = checkedGame.score
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        if sender == numberButton {
            play(move: Move.number)
        } else if sender == fizzButton {
            play(move: Move.fizz)
        } else if sender == buzzButton {
            play(move: Move.buzz)
        } else if sender == fizzBuzzButton {
            play(move: Move.fizzBuzz)
        }
    }
}

