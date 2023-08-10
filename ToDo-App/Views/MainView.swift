//
//  MainView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    init(){
        UITabBar.appearance().unselectedItemTintColor = UIColor(.secondary)
    }
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View{
         TabView{
            TodoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
         .accentColor(.primary)
    }
}

#Preview {
    MainView()
}
