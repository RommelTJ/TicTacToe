//
//  ViewController.swift
//  TicTacToe
//
//  Created by Rommel Rico on 3/2/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    @IBAction func doButton(sender: AnyObject) {
        var image = UIImage(named: "tictactoe_cross.png")
        sender.setImage(image, forState: .Normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button0.setImage(UIImage(named: ""), forState: .Normal)
        button1.setImage(UIImage(named: ""), forState: .Normal)
        button2.setImage(UIImage(named: ""), forState: .Normal)
        button3.setImage(UIImage(named: ""), forState: .Normal)
        button4.setImage(UIImage(named: ""), forState: .Normal)
        button5.setImage(UIImage(named: ""), forState: .Normal)
        button6.setImage(UIImage(named: ""), forState: .Normal)
        button7.setImage(UIImage(named: ""), forState: .Normal)
        button8.setImage(UIImage(named: ""), forState: .Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

