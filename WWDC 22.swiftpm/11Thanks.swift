//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import Foundation
import SwiftUI

struct ThanksView: View {
    @State var selectedColor: Color
    @State var shape: Shape
    @State var emotion: Emotion
    
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack(alignment: .center) {
                
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
                VStack {
                    
                    Text("Thanks for playing!")
                        .font(.system(size: 150, weight: .heavy, design: .monospaced))
                        .foregroundColor(.black)
                        .frame(width: 750, height: 800, alignment: .leading)
                    
                   
                    
                }
            }
            
            .edgesIgnoringSafeArea(.all)
            
        }
        
    }
    
    struct ThanksView_Previews: PreviewProvider {
        static var previews: some View {
            ThanksView(selectedColor: .secondary, shape: .amoeba, emotion: .doido)
        }
    }
}
