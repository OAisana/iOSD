//
//  ViewController.swift
//  lab5
//
//  Created by Aisana Orazkulova on 23.10.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var flowerImage: UIImageView!
    @IBOutlet private weak var flowerName: UILabel!

    let flowers: [String: UIImage] = ["astroemeria-friendship": .alstroemeria, "carnation-love": .carnation, "chrysanthemum-loyalty": .chrysanthemum, "daffodil-hope": .daffodil, "hydrangea-apology": .hydrangea, "iris-trust": .iris, "lily-rebirth": .lily, "orchid-beauty": .orchid, "sunflower-happiness": .sunflower]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction private func chooseFlower(_ sender: UIButton) {
        let randomFlower = flowers.randomElement()
        flowerImage.image = randomFlower?.value
        flowerName.text = randomFlower?.key
    }

}

