//
//  ItemCell.swift
//  CollectionsWithSwiftUI
//
//  Created by Francisco Soares Neto on 18/11/20.
//

import SwiftUI

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
