//
//  ViewController.swift
//  NextItem
//
//  Created by 3039109904LB on 7/16/17.
//  Copyright © 2017 LB. All rights reserved.
//

import UIKit

class NextItemViewController: UIViewController {
    
    // Stored property references the ItemArray object which serves as the data source for our view controller
    // we instantiate the ItemArray in the viewDidLoad method
    var items: ItemArray?
    
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
        
        // Instantiate ItemArray data source object
        items = ItemArray(plistName: "items")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //LB: This is the only control for the user, to display an item in the TextViewItem
    @IBAction func NextItemControl(_ sender: UIButton) {
        
        // Display a random item
        if let randomItem = items?.randomItem() {
            TextViewItem.text=("¡ \(randomItem) !")
        }
    }
}

// MARK: Storyboard methods
extension NextItemViewController {

    // The prepare(for:sender:) method is called when the user taps the "edit" button,
    // and it is when we configure our EditListTableController before it is displayed
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tableViewController = segue.destination as? EditListTableController {
            tableViewController.items = items
        }
    }
}
