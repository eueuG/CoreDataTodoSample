//
//  TodoListItem+CoreDataProperties.swift
//  CoreDataTodoSample
//
//  Created by 野田凜太郎 on 2021/06/06.
//
//

import Foundation
import CoreData


extension TodoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TodoListItem> {
        return NSFetchRequest<TodoListItem>(entityName: "TodoListItem")
    }

    @NSManaged public var name: String?
    @NSManaged public var createdAt: Date?

}

extension TodoListItem : Identifiable {

}
