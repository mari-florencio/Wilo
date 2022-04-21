//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import Foundation
import SwiftUI

struct FeelingView: View {
    
    @State var selectedColor: Color
    @State var shape: Shape
    
    
    var body: some View {
        
        ZStack {
            
            Color(.black)
            
            Image(shape.getImageName())
            
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(selectedColor)
                .frame(width: 300, height: 700)
                .padding(.leading, 200)
            
            
            VStack {
                
                Text("But...I'm feeling a little empty")
                    .font(.system(size: 30, weight: .regular, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 300, height: 120, alignment: .leading)
                
                
                
                Text("Can you give me some emotion?")
                    .font(.system(size: 30, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 300, height: 120, alignment: .leading)
                
                
                
                NavigationLink(destination: EmotionsView(selectedColor: selectedColor, shape: shape))  {
                    
                    Image("Arrow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 30, alignment: .leading)
                        .padding(.top, 50)
                      
                    
                    
                }
            }
            
        }
        
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct FeelingView_Previews: PreviewProvider {
    static var previews: some View {
        FeelingView(selectedColor: .secondary, shape: .amoeba)
    }
}
