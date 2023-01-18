//
//  ContentView.swift
//  Fructus
//
//  Created by Sebastian Cioată on 15.01.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
            NavigationView{
                List{
                    ForEach(fruits.shuffled()) { item in
                        FruitRowView(fruit: item)
                        .padding(.vertical, 4)                    }
                }
                .navigationTitle("Fruits")
        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
