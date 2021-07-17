//
//  ContentView.swift
//  TabViewsDemo
//
//  Created by Azu on 17/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
                View1()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("View 1")
                }.tag(1)
            View2()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("View 2")
                }.tag(2)
            View3()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("View 3")
                }.tag(3)
        }
        .font(.largeTitle)
    }
}


struct View1: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: Text("New Page"),
                label: {
                    Text("View 1")
            })
            .navigationBarTitle("View 1 Bar Title")
        }
        
    }
}

struct View2: View {
    var body: some View {
        Text("View 2")
    }
}

struct View3: View {
    var body: some View {
        Text("View 3")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
