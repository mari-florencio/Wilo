//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 19/04/22.
//

import Foundation


enum Shape {
    case amoeba
    case circle
    case star
    
    func getImageName() -> String {
        switch self {
        case .amoeba:
            return "Amoeba"
        case .circle:
            return "Circle"
        case .star:
            return "Star"
        }
    }
}



