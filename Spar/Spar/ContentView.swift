//
//  ContentView.swift
//  Spar
//
//  Created by Роман Наумов on 10.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            SearchBarView()
            Spacer()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 5){
                    FirstGridSection()
                    Spacer()
                    SecondGridSection()
                        .frame(height: 150)
                    Spacer()
                    Image("QR")
                        .resizable()
                        .cornerRadius(10)
                        .frame(height: 90)
                        .padding()
                    Spacer()
                    ThirdGridSection()
                    Spacer()
                    FourthGridSection()
                    FourthGridSection()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
