//
//  OnTrakItemView.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import SwiftUI

//Displays the tasks user has entered
//Also displays whether they are completed or not
struct OnTrakItemView: View {
    @StateObject var viewModel = OnTrakItemViewModel()
    let item: OnTrakItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.body)
                    .bold()
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button{
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.orange)
            }
        }
    }
}

#Preview {
    OnTrakItemView(item: .init(id: "123",
                               title: "get milk",
                               dueDate:
                                    Date()
                                    .timeIntervalSince1970 + 1000000,
                               createdDate:
                                    Date()
                                    .timeIntervalSince1970,
                               isDone: false))
}
