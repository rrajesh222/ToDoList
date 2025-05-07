//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Rithika Rajesh on 5/7/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack{
            Text("Task Title:")
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
            Button {

            } label: {
                    Text("Save")
            }
        }.padding()
    }
}

#Preview {
    NewToDoView()
}
