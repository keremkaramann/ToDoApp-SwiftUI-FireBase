//
//  ContentView.swift
//  ToDoApp-SwiftUI-FireBase
//
//  Created by Kerem Karaman on 17.02.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel =  MainViewViewModel()
    
    var body: some View {
        if viewModel.isSighnedIn, !viewModel.currentUserıd.isEmpty{
            accountView
        } else{
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View{
        TabView{
            ToDoListView(userId: viewModel.currentUserıd)
                .tabItem {
                    Label("ToDo", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
    
}

#Preview {
    MainView()
}
