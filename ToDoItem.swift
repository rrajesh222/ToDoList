//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Rithika Rajesh on 5/7/25.
//
import SwiftData
import Foundation
@Model
class ToDoItem {
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false) {
          self.title = title
          self.isImportant = isImportant
    }
}


