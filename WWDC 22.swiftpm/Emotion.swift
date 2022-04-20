//
//  Shape.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 19/04/22.
//

import Foundation

enum Emotion {
    case doido
    case apx
    case lingua
    case noiz
    case ok
    case sad
    
    func getImageName() -> String {
        switch self {
        case .doido:
            return "doido"
        case .apx:
            return "apx"
        case .lingua:
            return "lingua"
        case .noiz:
            return "noiz"
        case .ok:
            return "ok"
        case .sad:
            return "sad"
        }
    }
}



