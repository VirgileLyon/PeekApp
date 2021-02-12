//
//  ContentView.swift
//  Peek
//
//  Created by Quentin Durand on 04/02/2021.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab){
            ProfileView(myUser: FIRST_TEST_USER)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profil")
                }
                .tag(0)
            
            FirstPlayView()
                .tabItem {
                    Image(systemName: "play.fill")
                    Text("Ecouter")
                }
                .tag(1)
            
            HistoricView(myUser: FIRST_TEST_USER, tabMusic: LIST_TEST_MUSIC)
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Historique")
                }
                .tag(2)
        }
        .accentColor(.white)
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
