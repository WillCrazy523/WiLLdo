//
//  SwipeTableVC.swift
//  WiLLdo
//
//  Created by Chao Wang on 4/14/18.
//  Copyright © 2018 Chao Wang. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableVC: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70.0

    }
    
    //TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        
        return cell
    }
    
  
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            
            // handle action by updating model with deletion
            print("Delete Cell")
            
            self.updateModel(at: indexPath)
            
        }
        
        let more = SwipeAction(style: .default, title: "Edit") { action, indexPath in
            
            print("Edit Cell")
            
            //self.updateEdit(at: indexPath)
        }
        
        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")
        more.image = UIImage(named: "more-icon")
        
        return [deleteAction, more]
    }
    
    func updateModel(at indexPath: IndexPath) {
        //Update our data model
        print("Item deleted from superclass")
    }
    
//    func updateEdit(at indexPath: IndexPath) {
//        print("Item edit from superclass")
//    }
    
//    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
//        var options = SwipeTableOptions()
//        options.expansionStyle = .destructive
//        //options.transitionStyle = .border
//        return options
//    }
    
//    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
//        
//        return SwipeTableOptions()
//    }
//    
//    func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) {
//        
//    }
//    
//    func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?, for orientation: SwipeActionsOrientation) {
//        
//    }
    
}












