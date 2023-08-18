//
//  ThirdGridSection.swift
//  Spar
//
//  Created by Роман Наумов on 14.08.2023.
//

import SwiftUI

struct ThirdGridSection: View {
    private let columnsThird: [GridItem] = [
        GridItem(.fixed(20), spacing: nil, alignment: nil)
    ]
    
    private let dataImage = ["7","8","9","10","11","12"]
    
    var body: some View {
        ScrollView(.horizontal,
                   showsIndicators: false) {
            LazyHGrid(rows: columnsThird) {
                HStack(spacing: 10) {
                    ForEach(0..<dataImage.count, id: \.self) { index in
                        Image(dataImage[index])
                            .resizable()
                            .cornerRadius(20)
                            .frame(width: 90, height: 110)
                    }
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
            }
        }
    }
}

struct ThirdGridSection_Previews: PreviewProvider {
    static var previews: some View {
        ThirdGridSection()
    }
}
