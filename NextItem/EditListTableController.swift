//
//  EditListTableController.swift
//  NextItem
//
//  Created by cris on 8/5/17.
//  Copyright © 2017 LB. All rights reserved.
//

import UIKit

class EditListTableController: UITableViewController {
    // A reference to the items data source which
    var items: ItemArray?
    
}

// MARK: UITableViewSource methods
extension EditListTableController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let c = items?.data.count {
            return c
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemcell")
        cell?.textLabel?.text = items?.data[indexPath.row]
        return cell!
    }

}

// MARK: UITableViewDelegate methods
extension EditListTableController {
    
}
