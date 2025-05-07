//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Rithika Rajesh on 5/7/25.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
