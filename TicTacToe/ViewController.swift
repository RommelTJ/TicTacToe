//
//  ViewController.swift
//  TicTacToe
//
//  Created by Rommel Rico on 3/2/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    var winner = 0
    var goNumber = 1
    // 0 = Empty, 1 = Circle, 2 = Cross
    var gameState = [0,0,0,0,0,0,0,0,0]
    let winningStates = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    
    @IBAction func playAgain(sender: AnyObject) {
        setBoard()
    }
    
    @IBAction func doButton(sender: AnyObject) {
        if (gameState[sender.tag] == 0 && winner==0) {
            var image = UIImage()
            if (goNumber%2 == 0) {
                //Even number, circles turn
                image = UIImage(named: "tictactoe_circle.png")!
                gameState[sender.tag] = 1
            } else {
                image = UIImage(named: "tictactoe_cross.png")!
                gameState[sender.tag] = 2
            }
            
            //Check if user won.
            for winState in winningStates {
                if (gameState[winState[0]]==gameState[winState[1]] && gameState[winState[1]]==gameState[winState[2]] && gameState[winState[0]] != 0) {
                    winner = gameState[winState[0]]
                    NSLog("Winner! \(winner)")
                }
            }
            
            //Handle end of game
            if(winner != 0){
                winnerLabel.alpha = 1
                playAgainButton.alpha = 1
                if winner == 1 {
                    winnerLabel.text = "CIRCLES WON!"
                } else {
                    winnerLabel.text = "CROSSES WON!"
                }
            }
            
            goNumber++
            sender.setImage(image, forState: .Normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBoard()
    }
    
    func setBoard() {
        button0.setImage(nil, forState: .Normal)
        button1.setImage(nil, forState: .Normal)
        button2.setImage(nil, forState: .Normal)
        button3.setImage(nil, forState: .Normal)
        button4.setImage(nil, forState: .Normal)
        button5.setImage(nil, forState: .Normal)
        button6.setImage(nil, forState: .Normal)
        button7.setImage(nil, forState: .Normal)
        button8.setImage(nil, forState: .Normal)
//        for var i=0; i<9 ; i++ {
//            button = view.viewWithTag(i) as UIButton
//            button.setImage(nil, forState: .Normal)
//        }
        winnerLabel.alpha = 0
        winnerLabel.text = ""
        playAgainButton.alpha = 0
        winner = 0
        goNumber = 1
        gameState = [0,0,0,0,0,0,0,0,0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

