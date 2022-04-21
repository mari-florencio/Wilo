//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct ColorsView: View {
    @State var selectedColor: Color
    @State var shape: Shape
    
    var body: some View {
        
        ZStack {
            
            Color(.white)
            
            VStack {
                
                
                Text("Help me\nchoose a\ncolor")
                    .font(.system(size: 30, weight: .heavy, design: .monospaced))
                    .foregroundColor(.black)
                    .frame(width: 300, height: 120, alignment: .leading)
                    .padding(.bottom, 20)

                
                VStack {
                    
                    
                    Image(shape.getImageName())
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 350, alignment: .center)
                        .foregroundColor(selectedColor)
                 
                    
                    // AQUI TA O COLOR PICKER!!
                    
                    ColorPicker("Choose the amazing color", selection: $selectedColor, supportsOpacity: false)
                        .font(.system(size: 20, weight: .regular, design: .monospaced))
                        .frame(width: 300, height: 110, alignment: .leading)
                        .padding(.top, 50)
                    
                    NavigationLink(destination: GreatChoiceView(selectedColor: selectedColor, shape: shape)) {
                        
                        Text("Continue ->")
                            .font(.system(size: 15, weight: .medium, design: .monospaced))
                            .foregroundColor(.green)
                            .frame(width: 300, height: 20, alignment: .center)
                           // .padding(.bottom, 20)
                        
                        
//                        Image("ArrowB")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 300, height: 20, alignment: .center)
//                           .padding(.top, 10)
                    }
                    
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView(selectedColor: .secondary, shape: .amoeba)
    }
}
