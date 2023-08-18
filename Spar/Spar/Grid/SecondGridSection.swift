//
//  SecondGridSelection.swift
//  Spar
//
//  Created by Роман Наумов on 14.08.2023.
//

import SwiftUI

struct SecondGridSection: View {
    private let dataImage = ["1","2","3","4","5","6","1","2","3","4","5","6","1","2","3","4","5","6","1","2","3","4","5","6","1","2","3","4","5","6"]
    
    private let columnsSecond: [GridItem] = [
        GridItem(.fixed(20), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal,
                       showsIndicators: false) {
                LazyHGrid(rows: columnsSecond) {
                    HStack(spacing: 10) {
                        ForEach(0..<dataImage.count, id: \.self) { index in
                            Image(dataImage[index])
                                .resizable()
                                .cornerRadius(20)
                                .frame(width: 300, height: 150)
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                }
            }
                       .onAppear {
                           proxy.scrollTo(dataImage.count / 2)
                       }
        }
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        SecondGridSection()
    }
}
