//
//  FirstGridSection.swift
//  Spar
//
//  Created by Роман Наумов on 11.08.2023.
//

import SwiftUI

struct FirstGridSection: View {
   
    private let columnsFirst: [GridItem] = [
        GridItem(.fixed(10), spacing: nil, alignment: .center)
    ]
    private let dataImage = [
        "image1",
        "image1",
        "image1",
        "image1",
        "image1",
        "image1",
        "image1",
        "image1",
        "image1",
        "image1",
    ]
    var body: some View {
        VStack{
            ScrollView(.horizontal,
                       showsIndicators: false) {
                LazyHGrid(rows: columnsFirst) {
                    HStack(spacing: 15) {
                        ForEach(0..<dataImage.count, id: \.self) { index in
                            Image(dataImage[index])
                                .resizable()
                                .cornerRadius(30)
                                .frame(width: 60, height: 60)
                                .scaledToFill()
                                .background(Color.white)
                        }
                    }
                    .padding()

                }
            }
        }
    }
}

struct FirstGridSection_Previews: PreviewProvider {
    static var previews: some View {
        FirstGridSection()
    }
}
