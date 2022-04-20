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
                .frame(width: 500, height: 500)
                .padding(.leading, 350)
            
            
            VStack {
                
                Text("But...I'm feeling a little empty")
                    .font(.system(size: 80, weight: .regular, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 700, height: 300, alignment: .leading)
                
                
                
                Text("Can you give me some emotion?")
                    .font(.system(size: 80, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 700, height: 450, alignment: .leading)
                
                
                NavigationLink(destination: EmotionsView(selectedColor: selectedColor, shape: shape))  {
                    
                    Image("Arrow")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 60, alignment: .leading)
                        .padding(.trailing, 400)
                        .padding(.top, 20)
                    
                    
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
