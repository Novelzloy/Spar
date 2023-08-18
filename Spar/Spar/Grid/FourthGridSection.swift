//
//  FourthGridSection.swift
//  Spar
//
//  Created by Роман Наумов on 14.08.2023.
//

import SwiftUI

struct FourthGridSection: View {
    private let columnsFourth: [GridItem] = [
        GridItem(.fixed(20), spacing: nil, alignment: nil)
    ]
    
    private let dataImage = ["13","14","15","16","17","18","19","20","22"]
    
    var body: some View {
        ScrollView(.horizontal,
                   showsIndicators: false) {
            LazyHGrid(rows: columnsFourth) {
                HStack(spacing: 10) {
                    ForEach(0..<dataImage.count, id: \.self) { index in
                        Image(dataImage[index])
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 100, height: 100)
                    }
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
            }
        }
    }
}

struct FourthGridSection_Previews: PreviewProvider {
    static var previews: some View {
        FourthGridSection()
    }
}
