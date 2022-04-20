//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import Foundation
import SwiftUI

struct AliveView: View {
    @State var selectedColor: Color
    @State var shape: Shape
    @State var emotion: Emotion
    
    
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack {
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
                VStack {
                    
                    Text("Now I'm feeling it...")
                        .font(.system(size: 100, weight: .regular, design: .monospaced))
                        .foregroundColor(.black)
                        .frame(width: 700, height: 300, alignment: .leading)
                    
                    
                    Text("And I am...")
                        .font(.system(size: 100, weight: .regular, design: .monospaced))
                        .foregroundColor(.black)
                        .frame(width: 700, height: 200, alignment: .leading)
                    
                    
                    Text("ALIVE!")
                        .font(.system(size: 170, weight: .heavy, design: .monospaced))
                        .foregroundColor(.black)
                        .frame(width: 700, height: 300, alignment: .leading)
                    
                    NavigationLink(destination: ResultView(selectedColor: selectedColor, shape: shape, emotion: emotion)) {
                        
                        Image("ArrowB")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 60, alignment: .leading)
                            .padding(.trailing, 400)
                            .padding(.top, 20)
                        
                        
                    }
                }
            }
        }
        
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct AliveView_Previews: PreviewProvider {
    static var previews: some View {
        AliveView(selectedColor: .secondary, shape: .amoeba, emotion: .apx)
    }
}
