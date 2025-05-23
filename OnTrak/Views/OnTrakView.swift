//
//  OnTrakItems.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//
import FirebaseFirestore
import SwiftUI

//Lists the items in OnTrakItemVieew
//Gets the correct list from the firebase to display
//based on the current user
//Also implements delete item functionality
struct OnTrakView: View {
    @StateObject var viewModel: OnTrakViewModel
    @FirestoreQuery var items: [OnTrakItem]
    
    init(userId: String){
        // users/<ID>/ontraks/ <entries>
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/traks"
        )
        self._viewModel = StateObject(
            wrappedValue:OnTrakViewModel(userId: userId)
        )
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items) {item in
                    OnTrakItemView(item: item)
                        .swipeActions{
                            Button{
                                viewModel.delete(id: item.id)
                            } label: {
                                Text("Delete")
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Stay OnTrak")
            .toolbar{
                Button{
                    //action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    OnTrakView(userId: "XYeTKTVMLjc4hkzNgBFdwM5szlo1")
}
