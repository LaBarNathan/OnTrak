//
//  ContentView.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import SwiftUI

//Loads app. Checks if user signed in
//Displays appropriate view
struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        //signed in
        TabView{
            OnTrakView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }    }
}

#Preview {
    MainView()
}
