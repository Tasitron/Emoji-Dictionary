//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Tasi on 03/09/2016.
//  Copyright © 2016 Tasi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji :String = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        if emojiLabel.text == "💩" {
            definitionLabel.text = "This is a poo face emoji."
        }
        if emojiLabel.text == "🐹"  {
            definitionLabel.text = "This is an emoji of a cute hamster."
        }
        if emojiLabel.text == "👻"  {
            definitionLabel.text = "This is a ghost emoji."
        }
        if emojiLabel.text == "😀"  {
            definitionLabel.text = "This is a classic smiley face emoji."
        }
        if emojiLabel.text == "🍕"  {
            definitionLabel.text = "This is a pizza emoji."
        }
        if emojiLabel.text == "😎"  {
            definitionLabel.text = "This is a smiley face with sunglasses"
        }
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
