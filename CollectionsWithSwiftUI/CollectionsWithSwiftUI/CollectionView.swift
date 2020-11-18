//
//  CollectionView.swift
//  CollectionsWithSwiftUI
//
//  Created by Francisco Soares Neto on 18/11/20.
//

import SwiftUI

struct CollectionView: View {
    @State var items: [Item]
    var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.black)
                .padding([.leading], 10)
            theCarrousel
        }
    }
        
    var theCarrousel2: some View {
        ScrollView(.horizontal) {
            LazyHStack (alignment: .top) {
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
    var theCarrousel: some View {
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

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(items: [Item(id: "0", name: "Nariz", imageName: Image(systemName: "nose")),
                                Item(id: "1", name: "Olhos", imageName: Image(systemName: "eyes")),
                                Item(id: "2", name: "Bigode", imageName: Image(systemName: "mustache")),
                                Item(id: "3", name: "Boca", imageName: Image(systemName: "mouth"))], title: "Partes do Corpo")
    }
}
