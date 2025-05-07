//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Rithika Rajesh on 5/7/25.
//

import SwiftUI

struct NewToDoView: View {
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    var body: some View {
        VStack{
            Text("Task Title:")
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            Button {
                addToDo()
                showNewTask = false

            } label: {
                    Text("Save")
            }
        }.padding()
    }
    func addToDo(){
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView( toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: .constant(false))
}


