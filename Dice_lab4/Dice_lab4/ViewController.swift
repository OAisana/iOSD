//
//  ViewController.swift
//  Dice_lab4

//  Created by Aisana Orazkulova on 20.10.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    let dices: [UIImage] = [
        UIImage(named: "dice1")!,
        UIImage(named: "dice2")!,
        UIImage(named: "dice3")!,
        UIImage(named: "dice4")!,
        UIImage(named: "dice5")!,
        UIImage(named: "dice6")!
    ]
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction private func rollButton(_ sender: UIButton){
        leftDiceImageView.image = dices.randomElement()
        rightDiceImageView.image = dices.randomElement()
   
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if motion == .motionShake {
                leftDiceImageView.image = dices.randomElement()
                rightDiceImageView.image = dices.randomElement()
            }
        }
}
