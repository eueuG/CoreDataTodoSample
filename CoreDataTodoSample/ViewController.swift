//
//  ViewController.swift
//  CoreDataTodoSample
//
//  Created by 野田凜太郎 on 2021/06/06.
//

import UIKit

class ViewController: UIViewController {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Core Data To Do List"
    }

    
    
    
    
    // Core Data

    func getAllItems() {
        do {
            let items = try context.fetch(TodoListItem.fetchRequest())
        }
        catch {
            // error
        }
    }

    func createItem(name: String) {
        let newItem = TodoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
        
        do {
            try context.save()
        }
        catch {
            
        }
    }
    
    func deleteItem(item: TodoListItem) {
        context.delete(item)
        do {
            try context.save()
        }
        catch {
            
        }
    }
    
    func updateItem(item: TodoListItem, newName: String) {
        item.name = newName
        do {
            try context.save()
        }
        catch {
            
        }
    }
}

