//
//  UIApplication + Extension.swift
//  Spar
//
//  Created by Роман Наумов on 17.08.2023.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
