//
//  ContentView.swift
//  CollectionsWithSwiftUI
//
//  Created by Alessandra Pereira on 18/11/20.
//

import SwiftUI

struct Item: Identifiable {
    let id: String
    let name: String
    let imageName: Image
}

struct ItemCell: View {
    let item: Item
    var body: some View {
        VStack {
            Spacer()
            item.imageName
                .resizable()
                .frame(maxWidth: 30, maxHeight: 90)
                .scaledToFit()
                .padding()
                .background(Color.white)
                .cornerRadius(5)
            Text(item.name)
                .fontWeight(.semibold)
                .padding([.leading, .trailing, .bottom], 5)
            Spacer()
        }
    }
}

struct CollectionView: View {
    @State var items: [Item]
    var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.black)
                .padding([.leading], 10)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(items) {
                        ItemCell(item: $0)
                            .frame(width: 140, height: 100)
                            .background(Color.yellow)
                            .cornerRadius(5)
                            .padding(10)
                    }
                }
            }
        }
    }
}


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
