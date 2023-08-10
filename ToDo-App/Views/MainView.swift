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
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color(red: 0.776, green: 0.804, blue: 0.843, opacity: 1.000))
    }
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            TabView{
                TodoListView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
            .accentColor((Color(red: 0.000, green: 0.118, blue: 0.220, opacity: 1.000)))
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
