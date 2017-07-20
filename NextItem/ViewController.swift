//
//  ViewController.swift
//  NextItem
//
//  Created by 3039109904LB on 7/16/17.
//  Copyright © 2017 LB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //LB: this is where I add the IBOutlet (from http://www.richardhsu.me/posts/2015/01/17/textview-border.html)
    @IBOutlet weak var TextViewItem: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //LB: this is where I add border (from http://www.richardhsu.me/posts/2015/01/17/textview-border.html)
        let borderColor : UIColor = UIColor(red: 0.7, green: 0.2, blue: 0.0, alpha: 1.0)
        TextViewItem.layer.borderWidth = 1
        TextViewItem.layer.borderColor = borderColor.cgColor
        TextViewItem.layer.cornerRadius = 5.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//LB: This is the only control for the user, to display an item in the TextViewItem
    @IBAction func NextItemControl(_ sender: UIButton) {

        //Shuffle the Items array and then display the first item
        Items.shuffle()
        
        TextViewItem.text=("¡ \(Items[0]) !")
        
        }

    }

//The function and array that get's sorted when the user clicks NextItem, most of the code courtesy of https://gist.github.com/ijoshsmith/5e3c7d8c2099a3fe8dc3
extension Array
{
    /** Randomizes the order of an array's elements. */
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}

var Items = [
    "Call someone from Contacts, someone you haven't spoken with in the last month", "Drop down and give me 20 pushups and 20 sit-ups, now", "Motion is lotion: do ten minutes of PT, right now", "Motion is lotion: do ten minutes of PT, right now", "Run 1 fast mile", "Run 30 minute intervals", "Run a 5k", "Run a 5k", "Run a 5k", "Run a 10k ", "Run a 10k ", "Run 10 miles", "Read New Mexico history", "Browse a copy of The Rio Grande Sun", "Write 200 words in novel", "Write 400 words in novel", "Respond to a waiting email", "Work on 505 yard", "Hit the prayer closet for 15 minutes", "Sing a joyful song", "Sing a sad song", "Take a walk through the hood", "Drink a liter (of water)", "Drink a liter (of water)", "Eat some veggies", "Eat some veggies", "Read Kindle for an hour", "Read current hard copy book(s) for an hour", "Dust / vacuum / mop / windows / deck 505", "Dust / vacuum / mop / windows / deck 505", "Listen to Spanish lesson", "Listen to Spanish lesson", "Play 1/2 hour guitar (consider Sólo le pido and Jesu, Joy of Man's Desire)", "Play 1/2 hour guitar (consider Sólo le pido and Jesu, Joy of Man's Desire)", "Record guitar song for the Great Collection WIP"]
