//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Tasi on 02/09/2016.
//  Copyright © 2016 Tasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableview: UITableView!
    
    var emojis :[Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojis()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojis() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2009
        emoji1.category = "Smiley"
        emoji1.definition = "This is a smiley face with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🍕"
        emoji2.birthYear = 2012
        emoji2.category = "Food"
        emoji2.definition = "This is a pizza emoji."
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😀"
        emoji3.birthYear = 2009
        emoji3.category = "Smiley"
        emoji3.definition = "This is a classic smiley face emoji."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👻"
        emoji4.birthYear = 2011
        emoji4.category = "Smiley"
        emoji4.definition = "This is a ghost emoji."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💩"
        emoji5.birthYear = 2009
        emoji5.category = "Smiley"
        emoji5.definition = "This is a poo face emoji."
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐹"
        emoji6.birthYear = 2010
        emoji6.category = "Animal"
        emoji6.definition = "This is an emoji of a cute hamster."
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }


}

