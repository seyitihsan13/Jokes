//
//  ContentView.swift
//  Jokes
//
//  Created by İhsan Elkatmış on 20.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var JokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            
            List(JokesVM.Jokes) { element in
                Text(element.joke)
            }.toolbar {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }
            }
            .navigationTitle("Jokes")
            
        }.navigationBarTitle(Text("Jokes App"))
    }
    
    func addJoke() {
        JokesVM.getJokes(count: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
