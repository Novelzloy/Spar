//
//  SearchBarView.swift
//  Spar
//
//  Created by Роман Наумов on 10.08.2023.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText: String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.secondary)
                .padding(.leading, 25)
            TextField("Поиск по городу", text: $searchText){
                UIApplication.shared.endEditing()
            }
            .keyboardType(.webSearch)
            .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 20)
                        .foregroundColor(Color.gray)
                        .opacity(searchText.isEmpty ? 0.0 : 1)
                        .onTapGesture {
                            searchText = ""
                        }
                    , alignment: .trailing
                )
            Image(systemName: "text.justify")
                .foregroundColor(Color.green)
                .padding()
        }
        .font(.headline)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .strokeBorder(Color.black, lineWidth: 2)
                .frame(height: 40)
                .padding()
                .padding(.trailing, 30)
        )
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
