//
//  TabBarController.swift
//  Spar
//
//  Created by Роман Наумов on 17.08.2023.
//

import SwiftUI

struct TabBarController: View {
    var body: some View {
        GeometryReader { geo in
            TabView {
                ContentView()
                    .tabItem {
                        Label("Главная", systemImage: "house")
                    }
                CatalogView()
                    .tabItem {
                        Label("Каталог", systemImage: "square.split.2x2")
                    }
                BasketView()
                    .tabItem {
                        Label("Корзина", systemImage: "basket")
                    }
                ProfileView()
                    .tabItem {
                        Label("Профиль", systemImage: "person.crop.circle")
                    }
            }
        }
    }
}

struct TabBarController_Previews: PreviewProvider {
    static var previews: some View {
        TabBarController()
    }
}
