//
//  ViewController.swift
//  Concentration
//
//  Created by Benjamin Lewis on 23/6/18.
//  Copyright © 2018 Benjamin Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!

    @IBOutlet var cardButtons: [UIButton]!

    var emojiChoices = ["🐘", "🦍", "🐅", "🦏", "🐆", "🐐", "🐀", "🐒", "🐢", "🐘", "🦍", "🐅", "🦏", "🐆", "🐐", "🐀", "🐒", "🐢"]

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            print("cardNumber = \(cardNumber)")
        }
    }

    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard \(emoji) \(flipCount)")

        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.5761426111, green: 0.6840929601, blue: 0.4531847848, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.8766731828, green: 0.8968115482, blue: 0.8036398013, alpha: 1)
        }
    }
}
