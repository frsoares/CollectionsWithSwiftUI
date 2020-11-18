//
//  ContentView.swift
//  CollectionsWithSwiftUI
//
//  Created by Alessandra Pereira on 18/11/20.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack (spacing: 20) {
            CollectionView(items: [Item(id: "0", name: "Nariz", imageName: Image(systemName: "nose")),
                                   Item(id: "1", name: "Olhos", imageName: Image(systemName: "eyes")),
                                   Item(id: "2", name: "Bigode", imageName: Image(systemName: "mustache")),
                                   Item(id: "3", name: "Boca", imageName: Image(systemName: "mouth"))],
                           title: "Partes do Corpo")
            CollectionView(items: [Item(id: "0", name: "Radio", imageName: Image(systemName: "radio")),
                                   Item(id: "1", name: "Pente", imageName: Image(systemName: "comb")),
                                   Item(id: "2", name: "Lâmpada", imageName: Image(systemName: "lightbulb")),
                                   Item(id: "3", name: "Óculos", imageName: Image(systemName: "eyeglasses"))],
                           title: "Itens")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
