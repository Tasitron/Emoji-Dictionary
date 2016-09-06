//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Tasi on 03/09/2016.
//  Copyright © 2016 Tasi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var createdAt: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji.stringEmoji
        createdAt.text = "Created at: \(emoji.birthYear)"
        category.text = "Category : \(emoji.category)"
        definitionLabel.text = emoji.definition
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
