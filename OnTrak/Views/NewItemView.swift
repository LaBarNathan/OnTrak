//
//  NewItemsView.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import SwiftUI

//View shown when user clicks plus button
//Creation of the task functionality
struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack{
            Text ("New Task")
                .font(.system(size: 32))
                .bold()
                .padding()
            
            Form {
                //Title
                TextField("label", text:$viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Due date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //Button
                OTButton(title: "Save",
                          background: .pink) {
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    } else{
                        viewModel.showAlert = true
                    }
                }
                          .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text( "error"), message: Text("Please fill in all fields and select a date today or later"))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: {_ in
        
    }))
}
