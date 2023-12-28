//
//  Constants.swift
//  module12
//
//  Created by Mac on 24.01.2023.
//

import UIKit

enum Constants {
    enum Colors {
        static var grey4: UIColor? {
            UIColor(named: "Grey4")
        }
        static var grey3: UIColor? {
            UIColor(named: "Grey3")
        }
        static var grey2: UIColor? {
            UIColor(named: "Grey2")
        }
    }
    enum Fonts {
        static var copperplateLight: UIFont? {
            UIFont(name: "Copperplate-Light", size: 30)
        }
        static var HelveticaNeue: UIFont? {
            UIFont(name: "HelveticaNeue", size: 50)
        }
        static var GeorgiaBold: UIFont? {
            UIFont(name: "Georgia-Bold", size: 27)
        }
        
    }
    enum Text {
        static let Animals = Bundle.main.localizedString(forKey: "Animals", value: "", table: "Localizable")
        static let Cat = Bundle.main.localizedString(forKey: "Cat", value: "", table: "Localizable")
        static let Bird = Bundle.main.localizedString(forKey: "Bird", value: "", table: "Localizable")
    }
    enum Image {
        static let star = UIImage(named: "star")
    }
    
}
